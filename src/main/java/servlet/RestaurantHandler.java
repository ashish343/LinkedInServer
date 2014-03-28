package servlet;

import java.io.IOException;
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
import org.springframework.web.servlet.ModelAndView;

import com.data.BookingData;
import com.enums.UrlParameter;
import com.google.gson.Gson;
import com.mongodb.util.JSON;

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
			JSONArray arr = (JSONArray) JSON.parse(ridJson);

		}

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
		request.getRequestDispatcher("/WEB-INF/jsp/main.jsp").forward(request,
				response);
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
