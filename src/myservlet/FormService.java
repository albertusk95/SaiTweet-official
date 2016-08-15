package myservlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import saitweet.Query;
import saitweet.Tweet;

/**
 * Servlet implementation class FormService
 */
@WebServlet("/FormService")
public class FormService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormService() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// query text
		String query = request.getParameter("query");
		
		// checkbox value
		String[] socmedCheck = request.getParameterValues("socmed_check");
		
		// set query and chosen social media as global value
		Query.setQuery(query, socmedCheck);
		
		Tweet.extractTweet(query);
		
		// redirect to primary.jsp with the query text
		request.setAttribute("query", query);
        request.getRequestDispatcher("primary.jsp").forward(request, response);
	}

}
