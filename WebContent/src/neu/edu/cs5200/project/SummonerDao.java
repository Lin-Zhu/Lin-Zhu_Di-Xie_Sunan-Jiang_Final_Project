package neu.edu.cs5200.project;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class SummonerDao {
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("project");
	EntityManager em = null;
	
	public SummonerDao() {
		em = factory.createEntityManager();
	}
	
	public void createSummoner (Summoner summoner){
		em.getTransaction().begin();
		em.persist(summoner);
		em.getTransaction().commit();
	}
	
	public List<Summoner> selectSummonerByName(String name) {
		em.getTransaction().begin();
		Query q = em.createQuery("select s from Summoner s where s.name = :name");
		q.setParameter("name", name);
		List<Summoner> summoners = q.getResultList();
		em.getTransaction().commit();
		return summoners;
	}
	
}
