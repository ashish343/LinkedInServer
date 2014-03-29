package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.data.BookingData;
import com.data.Restaurant;
import com.data.Table;
import com.database.DataConnection;
import com.google.gson.Gson;

@SuppressWarnings("serial")
@WebServlet(name = "ServeRestaurant", urlPatterns = { "/serve" })
public class ServeRestaurant extends HttpServlet {
	protected final Log logger = LogFactory.getLog(getClass());

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String rid = request.getParameter("rId");
		BookingData bd = new BookingData();
		bd.setBookingTime(System.currentTimeMillis());
		ArrayList<String> temp = new ArrayList<String>();
		temp.add(rid);
		HashMap<String, Restaurant> unAvail = DataConnection.getUnAvailability(
				bd, temp);

		ArrayList<Restaurant> list = DataConnection
				.getRestaurantInformation(temp);

		Restaurant rest = list.get(0);
		List<Table> Tlist = rest.getTableList();
		for (Table tx : Tlist) {
			if (unAvail.containsKey(tx)) {
				tx.setAvailable(false);
			}
		}
		Gson gs = new Gson();
		ServletOutputStream out = response.getOutputStream();
		out.write(gs.toJson(rest).toString().getBytes());
		out.close();

	}
}
