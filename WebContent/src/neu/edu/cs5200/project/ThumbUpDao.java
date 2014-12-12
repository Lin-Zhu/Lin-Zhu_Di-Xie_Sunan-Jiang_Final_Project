package neu.edu.cs5200.project;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class ThumbUpDao {

	EntityManagerFactory factory = Persistence.createEntityManagerFactory("project");
	EntityManager em = null;
	
	public ThumbUpDao() {
		em = factory.createEntityManager();
	}
	
	public void createThumbUp (ThumbUp thumbup){
		em.getTransaction().begin();
		em.persist(thumbup);
		em.getTransaction().commit();
	}
	
	public List<ThumbUp> findThumbupByPost (Post post) {
		em.getTransaction().begin();
		Query q = em.createQuery("select t from ThumbUp t where t.post = :post");
		q.setParameter("post", post);
		List<ThumbUp> thumbups = q.getResultList();
		em.getTransaction().commit();
		return thumbups;
	}
	
	
	public static void main(String[] args) {
	
	}

}
