package com.database;

import java.io.IOException;

import javax.servlet.ServletOutputStream;

import com.mongodb.DB;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.utility.RequestContext;

public class DataConnection {

	private String db;
	private String mongoURI;
	private static DB mongoDb;
	private final MongoClient mongoClient;

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
		mongoURI = "mongodb://<user>:<password>@oceanic.mongohq.com:10046/app23478545";
		db = "app23478545";

		if (mongoURI == null || db == null) {
			System.err
					.println("Connection Information or DB information not present.. Exiting");
			System.exit(1);
		}
		mongoClient = new MongoClient(new MongoClientURI(mongoURI));
		mongoDb = mongoClient.getDB(db);
	}

	public static void main(String[] args) {

		System.out.println(System.currentTimeMillis());

	}

}