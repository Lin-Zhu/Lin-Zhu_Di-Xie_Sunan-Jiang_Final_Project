package neu.edu.cs5200.project;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class PhoneDao {
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("project");
	EntityManager em = null;
	
	public PhoneDao() {
		em = factory.createEntityManager();
	}
	
	public void createPhone (Phone phone){
		em.getTransaction().begin();
		em.persist(phone);
		em.getTransaction().commit();
	}
	
	public List<Phone> findPhoneByProfile (Profile profile) {
		em.getTransaction().begin();
		Query q = em.createQuery("select p from Phone p where p.profile = :profile");
		q.setParameter("profile", profile);
		List<Phone> phones = q.getResultList();
		em.getTransaction().commit();
		return phones;
	}
	
	public void removePhoneById(int id){
		em.getTransaction().begin();
		Phone phone = em.find(Phone.class, id);
		em.remove(phone);
		em.getTransaction().commit();
	}
	
}
