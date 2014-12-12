package neu.edu.cs5200.project;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class WorkDao {
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("project");
	EntityManager em = null;
	
	public WorkDao() {
		em = factory.createEntityManager();
	}
	
	public void createWork (Work work){
		em.getTransaction().begin();
		em.persist(work);
		em.getTransaction().commit();
	}
	
	public List<Work> findWorkByProfile (Profile profile) {
		em.getTransaction().begin();
		Query q = em.createQuery("select w from Work w where w.profile = :profile");
		q.setParameter("profile", profile);
		List<Work> works = q.getResultList();
		em.getTransaction().commit();
		return works;
	}
	
	public void removeWorkById(int id){
		em.getTransaction().begin();
		Work work = em.find(Work.class, id);
		em.remove(work);
		em.getTransaction().commit();
	}
	
	public void updateWork (int id, String companyName, Occupation occupation, 
			String companyAddress){
		em.getTransaction().begin();
		Work work = em.find(Work.class, id);
		work.setCompanyName(companyName);
		work.setOccupation(occupation);
		work.setCompanyAddress(companyAddress);
		em.merge(work);
		em.getTransaction().commit();
	}
}
