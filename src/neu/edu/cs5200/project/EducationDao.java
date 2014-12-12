package neu.edu.cs5200.project;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class EducationDao {
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("project");
	EntityManager em = null;
	
	public EducationDao() {
		em = factory.createEntityManager();
	}
	
	public void createEducation (Education education){
		em.getTransaction().begin();
		em.persist(education);
		em.getTransaction().commit();
	}
	
	public List<Education> findEducationByProfile (Profile profile) {
		em.getTransaction().begin();
		Query q = em.createQuery("select e from Education e where e.profile = :profile");
		q.setParameter("profile", profile);
		List<Education> educations = q.getResultList();
		em.getTransaction().commit();
		return educations;
	}
	
	public void removeEducationById(int id){
		em.getTransaction().begin();
		Education education = em.find(Education.class, id);
		em.remove(education);
		em.getTransaction().commit();
	}
	
	public void updateEducation (int id, String institution, String enrollmentDate,
			String graduationDate, String major, String degree){
		em.getTransaction().begin();
		Education education = em.find(Education.class, id);
		education.setInstitution(institution);
		education.setEnrollmentDate(enrollmentDate);
		education.setGraduationDate(graduationDate);
		education.setMajor(major);
		education.setDegree(degree);
		em.merge(education);
		em.getTransaction().commit();
	}
}
