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

import com.enums.Customer;
import com.enums.UrlParameter;

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
			String tableId = request.getParameter(UrlParameter.TABLE_ID.toString());
			//TODO: Update DB.
			//TODO: Send Push notification to Dashboard.
			result = true;
		} else if (Customer.CUSTOMER_MESSAGE.toString().equals(action)) {
			//TODO: Save the chat to DB.
			//TODO: Send Push notification to Dashboard.
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
