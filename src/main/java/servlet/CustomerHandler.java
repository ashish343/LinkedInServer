package servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.web.servlet.ModelAndView;

import com.data.BookingData;
import com.enums.Customer;
import com.enums.RestApi;
import com.enums.Restaurant;
import com.enums.UrlParameter;
import com.google.gson.Gson;
import com.parse.ParseNotificationHelper;
import com.test.PusherTest;
import com.utility.BookingIdGenerator;

@SuppressWarnings("serial")
@WebServlet(name = "CustomerHandler", urlPatterns = { "/cust" })
public class CustomerHandler extends HttpServlet {
	protected final Log logger = LogFactory.getLog(getClass());

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ServletOutputStream outputStream = response.getOutputStream();
		String action = request.getParameter(UrlParameter.ACTION.toString());
		boolean result = false;
		
		
		if(Customer.BOOK_TABLE.toString().equals(action)) {
			//TODO: Update DB.
			//TODO: If update is successful return the message other wise 
			
			String data = request.getParameter(UrlParameter.DATA.toString());
			if(data != null) {
				
				String bookingID = BookingIdGenerator.generateUniqueOrderId();
				Gson gson = new Gson();
				BookingData bookingData = gson.fromJson(data, BookingData.class);
				bookingData.setBookingId(bookingID);
			
				String jsonData = gson.toJson(bookingData);
			
				ParseNotificationHelper.registerChannel(bookingData.getCustomerId(), bookingID, null);
			
				String json = "{\"data\":\""
					+ jsonData.replace("\\\"", "\"").replace("\"",
							"\\\"") + "\",\"name\":\""
					+ Restaurant.REST_BOOK_TABLE.toString()
					+ "\",\"channel\":\"" + "R1" + "\"}";
			
				PusherTest.triggerPush("R1", Restaurant.REST_BOOK_TABLE.toString(), json,"");
				
				//TODO: Inform all other channels that this restaurant is booked.
				String parseMsg = ParseNotificationHelper.getMessage(RestApi.UPDATE_VIEW.toString(), bookingData.getResturantId(), bookingData.getTableId() + '_' + bookingData.getBookingTime()+'_'+bookingData.getCustomerId());
				ParseNotificationHelper.notifyChannel(bookingData.getResturantId(), parseMsg, null);
				result = true;
			}
		} else if (Customer.CUSTOMER_MESSAGE.toString().equals(action)) {
			
			//TODO: Save the chat to DB.
			String data = request.getParameter(UrlParameter.DATA.toString());
			if(data != null) {
				String json = "{\"data\":\""
					+ data.replace("\\\"", "\"").replace("\"",
							"\\\"") + "\",\"name\":\""
					+ Restaurant.REST_MESSAGE.toString()
					+ "\",\"channel\":\"" + "R1" + "\"}";
				PusherTest.triggerPush("R1", Restaurant.REST_MESSAGE.toString(), json,"");
				result = true;
			}
		} else if(Customer.SUBSCRIBE.toString().equals(action)) {
			
			String data = request.getParameter(UrlParameter.DATA.toString());
			if(data != null) {
				Gson gson = new Gson();
				BookingData bookingData = gson.fromJson(data, BookingData.class);
				ParseNotificationHelper.registerChannel(bookingData.getCustomerId(), bookingData.getResturantId(), null);
			}
			result = true;
		}
		
		JSONObject bdo = new JSONObject();
		try {
			bdo.put(UrlParameter.RESULT.toString(),result);
		} catch (JSONException e) {
			e.printStackTrace();
		}
		outputStream.write(bdo.toString().getBytes());
		outputStream.flush();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		ServletOutputStream out = resp.getOutputStream();
		out.write("heroku".getBytes());
		out.flush();
		handleRequest(req, resp);
	}

	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String now = (new Date()).toString();
		logger.info("Returning hello view with " + now);
		return new ModelAndView("/WEB_INF/jsp/hello.jsp", "now", now);
	}
}
