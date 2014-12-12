package neu.edu.cs5200.project;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;


public class ProfileDao {
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("project");
	EntityManager em = null;
	
	public ProfileDao() {
		em = factory.createEntityManager();
	}
	
	public void createProfile (Profile profile){
		em.getTransaction().begin();
		em.persist(profile);
		em.getTransaction().commit();
	}
	public List<Profile> findProfileByUser (User user) {
		em.getTransaction().begin();
		Query q = em.createQuery("select p from Profile p where p.user = :user");
		q.setParameter("user", user);
		List<Profile> profiles = q.getResultList();
		em.getTransaction().commit();
		return profiles;
	}
	
	public void removeProfileById(int id){
		em.getTransaction().begin();
		Profile profile = em.find(Profile.class, id);
		em.remove(profile);
		em.getTransaction().commit();
	}
	
	public Profile updateProfile (int id, String nickName, Gender gender, String dateOfBirth,
			String currentLocation, String hometown, String language,
			String address){
		em.getTransaction().begin();
		Profile profile = em.find(Profile.class, id);
		profile.setNickName(nickName);
		profile.setGender(gender);
		profile.setDateOfBirth(dateOfBirth);
		profile.setCurrentLocation(currentLocation);
		profile.setHometown(hometown);
		profile.setLanguage(language);
		profile.setAddress(address);
		em.merge(profile);
		em.getTransaction().commit();
		return profile;
	}
	
}
