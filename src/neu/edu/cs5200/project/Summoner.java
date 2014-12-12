package neu.edu.cs5200.project;

import java.lang.String;

import javax.persistence.*;


/**
 * Entity implementation class for Entity: Summoner
 *
 */
@Entity

public class Summoner {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String name;
	private int profileIconId;
	private int summonerLevel;
	private int SummonerId;
	@ManyToOne
	private User S_user = null;
	
	public Summoner() {
		super();
	}

	public Summoner(int id, String name, int summonerLevel) {
		super();
		this.id = id;
		this.name = name;
		this.summonerLevel = summonerLevel;
	}
	public Summoner(String name, int summonerLevel) {
		super();
		this.name = name;
		this.summonerLevel = summonerLevel;
	}
	public Summoner(int id, String name, int profileIconId, int summonerLevel) {
		super();
		this.id = id;
		this.name = name;
		this.profileIconId = profileIconId;
		this.summonerLevel = summonerLevel;
	}

	public Summoner(String name, int profileIconId, int summonerLevel,
			int summonerId, User s_user) {
		super();
		this.name = name;
		this.profileIconId = profileIconId;
		this.summonerLevel = summonerLevel;
		this.SummonerId = summonerId;
		this.S_user = s_user;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getProfileIconId() {
		return profileIconId;
	}

	public void setProfileIconId(int profileIconId) {
		this.profileIconId = profileIconId;
	}

	public int getSummonerLevel() {
		return summonerLevel;
	}

	public void setSummonerLevel(int summonerLevel) {
		this.summonerLevel = summonerLevel;
	}

	public int getSummonerId() {
		return SummonerId;
	}

	public void setSummonerId(int summonerId) {
		SummonerId = summonerId;
	}

	public User getS_user() {
		return S_user;
	}

	public void setS_user(User s_user) {
		S_user = s_user;
	}
	
}
