package neu.edu.cs5200.project;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "SearchPage", urlPatterns = { "/SearchPage" })
public class SearchPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		System.out.println("Hello from SearchPage Servlet " + username);
		
		UserDao userDao = new UserDao();
		List<User> usersByUsername = userDao.selectUserByUsername(username);
		
		if (!usersByUsername.isEmpty()){
		User user = usersByUsername.get(0);
		request.setAttribute("user", user);
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/SearchPage.jsp");
//		RequestDispatcher dispatcher = request.getRequestDispatcher("/SearchTestPage.jsp");
		dispatcher.forward(request, response);
		
	}

}
