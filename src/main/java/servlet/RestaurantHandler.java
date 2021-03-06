package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.json.JSONArray;
import org.json.JSONException;
import org.springframework.web.servlet.ModelAndView;

import com.data.BookingData;
import com.data.MapViewData;
import com.database.DataConnection;
import com.enums.RestApi;
import com.enums.UrlParameter;
import com.google.gson.Gson;
import com.parse.ParseNotificationHelper;

@SuppressWarnings("serial")
@WebServlet(name = "RestaurantHandler", urlPatterns = { "/rest" })
public class RestaurantHandler extends HttpServlet {
	protected final Log logger = LogFactory.getLog(getClass());
	Gson gs = new Gson();

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action.equals("getData")) {

			String bookingData = request.getParameter(UrlParameter.DATA
					.toString());
			String ridJson = request.getParameter(UrlParameter.RESTAURANT_ID
					.toString());
			BookingData bd = gs.fromJson(bookingData, BookingData.class);
			JSONArray arr = null;
			try {
				arr = new JSONArray(ridJson);
			} catch (JSONException e1) {
				e1.printStackTrace();
			}

			ArrayList<String> tmp = new ArrayList<String>();
			for (int ix = 0; ix < arr.length(); ix++) {
				try {
					tmp.add(arr.getString(ix));
				} catch (JSONException e) {
					e.printStackTrace();
				}
			}
			MapViewData mapview = DataConnection.getMapViewData(bd, tmp);
			ServletOutputStream out = response.getOutputStream();
			String outString = gs.toJson(mapview);
			out.write(outString.getBytes());
			out.close();
		} else if(action.equals("message")){
			String bookingId = request.getParameter("bookingId");
			String dataMessage = request.getParameter("data");
			String parseMsg = ParseNotificationHelper.getMessage(RestApi.UPDATE_BOOKING.toString(), bookingId, dataMessage);
			ParseNotificationHelper.notifyChannel(bookingId, parseMsg, null);
		}else {

			String now = (new Date()).toString();
			HttpSession session = request.getSession();
			ServletContext sc = session.getServletContext();
			String x = sc.getRealPath("/");
			String host = request.getScheme() + "://" + request.getServerName()
					+ ":" + request.getServerPort();

			// ServletOutputStream out = response.getOutputStream();
			// out.write(host.getBytes());
			// out.flush();

			request.setAttribute("path", host);
			request.setAttribute("now", now);
			request.getRequestDispatcher("/WEB-INF/jsp/main.jsp").forward(
					request, response);
		}
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
