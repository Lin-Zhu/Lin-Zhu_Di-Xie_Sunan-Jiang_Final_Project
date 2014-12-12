package neu.edu.cs5200.project;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class CommentDao {
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("project");
	EntityManager em = null;
	
	public CommentDao() {
		em = factory.createEntityManager();
	}
	
	public void createComment (Comment comment){
		em.getTransaction().begin();
		em.persist(comment);
		em.getTransaction().commit();
	}
	
	public List<Comment> findCommentByPost (Post post) {
		em.getTransaction().begin();
		Query q = em.createQuery("select c from Comment c where c.post = :post ORDER BY c.id DESC");
		q.setParameter("post", post);
		List<Comment> comments = q.getResultList();
		em.getTransaction().commit();
		return comments;
	}
	
	public static void main(String[] args) {
	}

}

