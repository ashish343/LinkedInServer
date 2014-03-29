package com.database;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletOutputStream;

import com.data.BookingData;
import com.data.DatbaseOrderEntry;
import com.data.MapViewData;
import com.data.Place;
import com.data.Restaurant;
import com.enums.UrlParameter;
import com.google.gson.Gson;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.utility.RequestContext;

public class DataConnection {

	private String db;
	private String mongoURI;
	private static DB mongoDb;
	private final MongoClient mongoClient;

	private final static String CURRENT_ORDERS = "orders";
	private final static String FINISHED_ORDERS = "previousOrders";
	private final static String RESTAURANT = "restaurant";

	private static DBCollection current_order;
	private static DBCollection previous_order;
	private static DBCollection restaurant;
	private static Gson gs = new Gson();

	static {
		try {
			loader(null);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static void loader(ServletOutputStream debugger) throws IOException {
		boolean isDebug;
		if (debugger != null)
			isDebug = RequestContext.isDebugEnabled();
		else
			isDebug = false;

		if (mongoDb == null) {
			new DataConnection();
			if (isDebug)
				debugger.write(("\nNew DB connection Formed.").getBytes());
		} else {
			if (isDebug)
				debugger.write(("\nUsing old DB connection.").getBytes());
		}
	}

	private DataConnection() throws IOException {
		mongoURI = "mongodb://root:root@oceanic.mongohq.com:10046/app23478545";
		db = "app23478545";

		if (mongoURI == null || db == null) {
			System.err
					.println("Connection Information or DB information not present.. Exiting");
			System.exit(1);
		}
		mongoClient = new MongoClient(new MongoClientURI(mongoURI));
		mongoDb = mongoClient.getDB(db);
		current_order = mongoDb.getCollection(CURRENT_ORDERS);
		previous_order = mongoDb.getCollection(FINISHED_ORDERS);
		restaurant = mongoDb.getCollection(RESTAURANT);
	}

	public static ArrayList<Restaurant> getRestaurantInformation(
			ArrayList<String> restaurantIds) {
		BasicDBObject inquery = new BasicDBObject();
		Gson gs = new Gson();

		inquery.put(UrlParameter.RESTAURANT_ID.toString(), new BasicDBObject(
				"$in", restaurantIds));

		DBCursor cursor = restaurant.find(inquery);
		ArrayList<Restaurant> rr = new ArrayList<Restaurant>();
		while (cursor.hasNext()) {
			Restaurant d = gs.fromJson(cursor.next().toString(),
					Restaurant.class);
			rr.add(d);
		}
		return rr;

	}

	public static MapViewData getMapViewData(BookingData bd,
			ArrayList<String> restaurantIds) {
		ArrayList<Restaurant> list = getRestaurantInformation(restaurantIds);
		HashMap<String, Restaurant> bookedDict = getAvailability(bd,
				restaurantIds);
		MapViewData mp = new MapViewData();
		List<Place> places = mp.getPlaces();
		String status = "";
		for (Restaurant r : list) {
			int total_count = r.getTableTypeCount().get(bd.getNoOfPeople());
			int booked_table = 0;
			if (bookedDict.containsKey(r.getRestaurantId())
					&& bookedDict.get(r.getRestaurantId()).getTableTypeCount()
							.containsKey(bd.getNoOfPeople())) {
				booked_table = bookedDict.get(r.getRestaurantId())
						.getTableTypeCount().get(bd.getNoOfPeople());
			}

			if ((float) booked_table / total_count == 1)
				status = "BOOKED";
			else if ((float) booked_table / total_count >= 0.5)
				status = "FILLING_FAST";
			else
				status = "AVAILABLE";
			Place p = new Place();
			p.setId(r.getRestaurantId());
			p.setStatus(status);
			places.add(p);
		}
		return mp;
	}

	public static HashMap<String, Restaurant> getAvailability(BookingData bd,
			ArrayList<String> restaurantIds) {
		long lookBack = 60 * 60 * 1000;
		long lookForward = 30 * 60 * 1000;

		BasicDBObject inquery = new BasicDBObject();
		Gson gs = new Gson();
		inquery.put(UrlParameter.RESTAURANT_ID.toString(), new BasicDBObject(
				"$in", restaurantIds));

		DBCursor cursor = current_order.find(inquery);
		HashMap<String, Restaurant> bookedDict = new HashMap<String, Restaurant>();
		while (cursor.hasNext()) {
			DBObject obj = cursor.next();
			DatbaseOrderEntry ob = gs.fromJson(obj.toString(),
					DatbaseOrderEntry.class);
			if (ob.getStart_time() - lookBack < bd.getBookingTime()
					&& ob.getEnd_time() + lookForward > bd.getBookingTime()) {
				if (!bookedDict.containsKey(ob.getRestaurantId()))
					bookedDict.put(ob.getRestaurantId(), new Restaurant());
				Restaurant r = bookedDict.get(ob.getRestaurantId());
				Map<Integer, Integer> map = r.getTableTypeCount();
				if (!map.containsKey(ob.getTableType()))
					map.put(ob.getTableType(), 0);
				map.put(ob.getTableType(), map.get(ob.getTableType()) + 1);
			}
		}
		return bookedDict;
	}

	public static void main(String[] args) {
		ArrayList<String> tmp = new ArrayList<String>();
		tmp.add("soddj");
		System.out.println(gs.toJson(tmp));

		System.out.println(System.currentTimeMillis());

	}
}