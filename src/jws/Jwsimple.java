package jws;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;

import neu.edu.cs5200.project.User;
import neu.edu.cs5200.project.UserDao;

@Path("/api")

public class Jwsimple {
	
	UserDao dao = new UserDao();
	@GET
	@Path("/find/{username}")
	@Produces("application/json")
	public User getUser(@PathParam ("username") String username) {
		UserDao dao = new UserDao();
		List<User> users = dao.selectUserByUsername(username);
		return users.get(0);
	}
	
	@GET
	@Produces("application/json")
	@Path("/find")
	public List<User> getAlluser() {
		return dao.selectAll();
	}
	
	@DELETE
	@Produces("application/json")
	@Path("/delete/{id}")
	public void deleteUser(@PathParam ("id") int id) {
		dao.deleteUser(id);
	}
	
	@POST
	@Path("/createMe")
	@Consumes("application/json") 
	public void createUser(User user) {
		
		dao.createUser(user);
	}
	
	@PUT
	@Path("/updateMe/{id}")
	@Consumes("application/json") 
	public void updateUser(@PathParam ("id") int id, User newUser) {
		
		dao.changeUsername(id, newUser);
	}
}
