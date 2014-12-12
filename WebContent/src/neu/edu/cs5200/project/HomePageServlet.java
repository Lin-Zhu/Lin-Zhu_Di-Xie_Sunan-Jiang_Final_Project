package neu.edu.cs5200.project;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet(name = "HomePage", urlPatterns = { "/HomePage" })
public class HomePageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String countStr = request.getParameter("count");
		
		String content = request.getParameter("content");
		String username = request.getParameter("username");
		
//		ServletContext servletContext = this.getServletConfig().getServletContext();
//		PrintWriter file = (PrintWriter) servletContext.getAttribute("file");
//		PrintWriter out = new PrintWriter(new FileWriter("c:\\outputfile.txt")); 
//		out=file;
		
		String action = request.getParameter("action");
		System.out.println("Hello from HomePage Servlet " + content + " " + username);
		
		UserDao userDao = new UserDao();
		List<User> usersByUsername = userDao.selectUserByUsername(username);
		User user = usersByUsername.get(0);
		PostDao dao = new PostDao();
		Post newPost;
		CommentDao commentDao = new CommentDao();
		Post post;
		Comment comment123;
		
		ThumbUp thumbup = new ThumbUp();
		ThumbUpDao thumbUpDao = new ThumbUpDao();
		
		if("createPost".equals(action) && !"".equals(content)) {
			post = new Post(content, user);
			dao.createPost(post);
		} 
		
		int count;
		if (countStr!=null) {
			count = Integer.parseInt(countStr);
			String removeAction;
			String commentAction;
			String likeAction;
			String postComment;
			String postId;
			String idStr;
			int id;
		
			while (count>0){
				removeAction = "remove"+count;
				if(removeAction.equals(action)) {
					postId = "post"+count;
					idStr = request.getParameter(postId);
					id = Integer.parseInt(idStr);
					dao.removePostById(id);
					System.out.println(id);
				} 
				
				commentAction = "comment"+count;
				
				if(commentAction.equals(action)) {
					postId = "post"+count;
					idStr = request.getParameter(postId);
					postComment = request.getParameter("postComment"+count);
					id = Integer.parseInt(idStr);
					newPost = new Post();
					newPost = dao.findPostById(id);
					comment123 = new Comment(postComment,user, newPost);
					if (!"".equals(postComment))
					commentDao.createComment(comment123);
				} 
				
				likeAction = "like"+count;
				if (likeAction.equals(action)){
					postId = "post"+count;
					idStr = request.getParameter(postId);
					id = Integer.parseInt(idStr);
					newPost = new Post();
					newPost = dao.findPostById(id);
					thumbup = new ThumbUp(user, newPost);
					thumbUpDao.createThumbUp(thumbup);
				}
				
				count--;
			}
		}
		
		request.setAttribute("user", user);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/HomePage.jsp");
		dispatcher.forward(request, response);
		
	}

}