package neu.edu.cs5200.project;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class EmailDao {
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("project");
	EntityManager em = null;
	
	public EmailDao() {
		em = factory.createEntityManager();
	}
	
	public void createEmail (Email email){
		em.getTransaction().begin();
		em.persist(email);
		em.getTransaction().commit();
	}
	
	public List<Email> findEmailByProfile (Profile profile) {
		em.getTransaction().begin();
		Query q = em.createQuery("select e from Email e where e.profile = :profile");
		q.setParameter("profile", profile);
		List<Email> emails = q.getResultList();
		em.getTransaction().commit();
		return emails;
	}
	
	public void removeEmailById(int id){
		em.getTransaction().begin();
		Email email = em.find(Email.class, id);
		em.remove(email);
		em.getTransaction().commit();
	}
}
