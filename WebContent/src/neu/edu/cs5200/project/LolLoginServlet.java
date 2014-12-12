package neu.edu.cs5200.project;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "LOLLogin", urlPatterns = { "/LOLLogin" })
public class LolLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String inputEmail = request.getParameter("inputEmail");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String inputSummoner = request.getParameter("inputSummoner");
		String inputPassword = request.getParameter("inputPassword");
		
		String action = request.getParameter("action");
		System.out.println("Hello from Login Servlet " + username + " "  + password + " "  + inputEmail+ " "  + firstName+ " "  + lastName+ " "  + inputSummoner+ " "  + inputPassword);
		
		UserDao dao1 = new UserDao();
		SummonerDao SDao = new SummonerDao();
		List<User> users = dao1.selectByUsernameAndPassword(username, password);
		
		if("create".equals(action)) {
			if(inputSummoner != null) {
				inputSummoner = inputSummoner.toLowerCase();
 			 	SummonerWebserviceClient client = new SummonerWebserviceClient();
 			 	Summoner summoner = client.getSummonerForName(inputSummoner);
 			 	List<Summoner> summoners = new ArrayList<Summoner>();
 			 	summoners.add(summoner);
 			 	
 			 	if(summoner != null) {
 			 		User user = new User(inputEmail, inputPassword, firstName , lastName, summoners);
 			 		dao1.createUser(user);
 			 		Summoner buildSummoner = new Summoner(summoner.getName(), summoner.getProfileIconId(), summoner.getSummonerLevel(), summoner.getId(), user);
 			 		SDao.createSummoner(buildSummoner);
 			 	}
			}
		} 
		
		
		
		
		if (users.isEmpty()){
			users = dao1.selectByUsernameAndPassword(inputEmail, inputPassword);
		
			if(users.isEmpty())
			{
				response.sendRedirect("/Project/LOLLogin.html");
			}
			else
			{
				User user = users.get(0);
				request.setAttribute("user", user);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/HomePage.jsp");
				dispatcher.forward(request, response);
	//			response.sendRedirect("/lolTest/ListMySummoner.jsp");
			}
		
		}
		
		else {
			User user = users.get(0);
			request.setAttribute("user", user);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/HomePage.jsp");
			dispatcher.forward(request, response);
		}
	}

}
