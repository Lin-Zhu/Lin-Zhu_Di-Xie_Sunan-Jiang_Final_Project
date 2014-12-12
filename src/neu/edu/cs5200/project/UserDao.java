package neu.edu.cs5200.project;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;




public class UserDao {

	EntityManagerFactory factory = Persistence.createEntityManagerFactory("project");
	EntityManager em = null;
	
	public UserDao() {
		em = factory.createEntityManager();
	}
	public List<User> selectByUsernameAndPassword(String username, String password) {
		em.getTransaction().begin();
		Query q = em.createQuery("select u from User u where u.username = :username  and u.password = :password");
		q.setParameter("username", username);
		q.setParameter("password", password);
		List<User> users = q.getResultList();
		em.getTransaction().commit();
		return users;
	}
	
	public List<User> selectUserByUsername(String username) {
		em.getTransaction().begin();
		Query q = em.createQuery("select u from User u where u.username = :username");
		q.setParameter("username", username);
		List<User> users = q.getResultList();
		em.getTransaction().commit();
		return users;
	}
	
	public void createUser(User user) {
		em.getTransaction().begin();
		em.persist(user);
		em.getTransaction().commit();
	}
	
	public List<User> findAllUsers() {
		em.getTransaction().begin();
		Query q = em.createQuery("select s from User s");
		List<User> users = q.getResultList();
		em.getTransaction().commit();
		return users;
	}
	
	public void updateUserFriend (int id, List<User> friends){
		em.getTransaction().begin();
		User user = em.find(User.class, id);
		user.setFriends(friends);
		em.merge(user);
		em.getTransaction().commit();
	}
	
	public User findFriendsById(int id) {
		em.getTransaction().begin();
		User user = em.find(User.class, id);
		em.getTransaction().commit();
		return user;
	}
	
	public List<User> selectAll() {
		em.getTransaction().begin();
		Query q = em.createQuery("select u from User u");
		List<User> users = (List<User>)q.getResultList();
		em.getTransaction().commit();
		return users;
	}
	
	public void deleteUser(int id) {
		em.getTransaction().begin();
		User user = em.find(User.class, id);
		em.remove(user);
		em.getTransaction().commit();
	}
	
	
	public void changeUsername(int id, User user) {
		em.getTransaction().begin();
		User u = em.find(User.class, id);
		u.setUsername(user.getUsername());
		u.setFirstName(user.getFirstName());
		u.setLastName(user.getLastName());
		em.getTransaction().commit();
	}
	public static void main(String[] args) {
		UserDao dao = new UserDao();
		List<User> users = dao.selectByUsernameAndPassword("111", "111");
		System.out.println(users);
	}
	
}
