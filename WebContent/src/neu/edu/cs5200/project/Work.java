package neu.edu.cs5200.project;

import java.io.Serializable;
import java.lang.String;

import javax.persistence.*;

@Entity
@Table(name = "work")
public class Work implements Serializable {

	   
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String companyName;
	private Occupation occupation;
	private String companyAddress;
	
	@ManyToOne
	private Profile profile;
	
	private static final long serialVersionUID = 1L;

	
	public Work() {
		super();
	}

	public Work(String companyName, Occupation occupation,
			String companyAddress, Profile profile) {
		super();
		this.companyName = companyName;
		this.occupation = occupation;
		this.companyAddress = companyAddress;
		this.profile = profile;
	}

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getCompanyName() {
		return companyName;
	}


	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}


	public Occupation getOccupation() {
		return occupation;
	}


	public void setOccupation(Occupation occupation) {
		this.occupation = occupation;
	}


	public String getCompanyAddress() {
		return companyAddress;
	}


	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}


	public Profile getProfile() {
		return profile;
	}


	public void setProfile(Profile profile) {
		this.profile = profile;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}   
	
}
