package neu.edu.cs5200.project;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;




public class PostDao {
	
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("project");
	EntityManager em = null;
	
	public PostDao() {
		em = factory.createEntityManager();
	}
	
	public Post createPost (Post post){
		em.getTransaction().begin();
		em.persist(post);
		em.getTransaction().commit();
		return post;
	}
	
	public List<Post> findHomePagePosts (User user) {
		em.getTransaction().begin();
		Query q;
		if (!user.getFriends().isEmpty()){
		q = em.createQuery("select p from Post p where p.user = :user OR p.user IN :user_friends ORDER BY p.id DESC");
		q.setParameter("user", user);
		q.setParameter("user_friends", user.getFriends());
		}
		else {
			q = em.createQuery("select p from Post p where p.user = :user ORDER BY p.id DESC");
			q.setParameter("user", user);
		}
		List<Post> posts = q.getResultList();
		em.getTransaction().commit();
		return posts;
	}
	
	public List<Post> findAllPosts() {
		em.getTransaction().begin();
		Query q = em.createQuery("select p from Post p");
		List<Post> posts = q.getResultList();
		em.getTransaction().commit();
		return posts;
	}
	
	public void removePostById(int id) {
		em.getTransaction().begin();
		Post post = em.find(Post.class, id);
		em.remove(post);
		em.getTransaction().commit();
	}
	
	public Post findPostById(int id) {
		em.getTransaction().begin();
		Post post = em.find(Post.class, id);
		em.getTransaction().commit();
		return post;
	}
	
	public static void main(String[] args) {
		PostDao dao = new PostDao();
//		List<Post> posts1 = dao.findAllPosts();
//		for(Post post1:posts1) {
//			System.out.println(post1.getContent()); 
//			System.out.println(post1.getUser().getUsername());
//		}
		UserDao dao1 = new UserDao();
		List<User> users = dao1.selectUserByUsername("sunan");
		User user1= users.get(0);
		
		System.out.println(user1.getUsername());
		List<Post> posts1 = dao.findHomePagePosts(user1);
		
		for(Post post1:posts1) { 
			System.out.println(post1.getContent());
			System.out.println(post1.getUser().getUsername());
		}
	}

}
