package neu.edu.cs5200.project;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "friends", urlPatterns = { "/friends" })
public class FriendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String countStr = request.getParameter("count");
		String action = request.getParameter("action");
		System.out.println("Hello from Friend Servlet " + username);
		
		UserDao userDao = new UserDao();
		List<User> usersByUsername = userDao.selectUserByUsername(username);
		User user = usersByUsername.get(0);
		
		int count;
		if (countStr!=null) {
			count = Integer.parseInt(countStr);
			String addFriendAction;
			String friendIdStr;
			String idStr;
			int FriendId;
		
			while (count>0){
				addFriendAction = "Friend"+count;
				if(addFriendAction.equals(action)) {
					friendIdStr = "userId"+count;
					idStr = request.getParameter(friendIdStr);
					FriendId = Integer.parseInt(idStr);
					User friend = userDao.findFriendsById(FriendId);
					List<User> friends = user.getFriends();
					friends.add(friend);
					userDao.updateUserFriend(user.getId(), friends);
					System.out.println("This the other side data " + FriendId+" "+user.getId());
					
					if (user.getId()!=FriendId){
					List<User> echoFriends = friend.getFriends();
					echoFriends.add(user);
					userDao.updateUserFriend(FriendId, echoFriends);
					}
					System.out.println(FriendId);
				} 
				
				count--;
			}
		}
		
		

		request.setAttribute("user", user);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/NewFriends.jsp");
		dispatcher.forward(request, response);
		
	}

}
