package neu.edu.cs5200.project;

import java.io.Serializable;
import java.lang.String;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

import org.eclipse.persistence.annotations.CascadeOnDelete;

@Entity
@Table(name = "profile")
public class Profile implements Serializable {

	   
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String nickName;
	private Gender gender;
	private String DateOfBirth;
	private String CurrentLocation;
	private String hometown;
	private String Language;
	private String address;
	
	@OneToOne(optional=false, fetch = FetchType.EAGER)
	private User user;
	
	@OneToMany(mappedBy="profile", cascade=CascadeType.ALL, fetch = FetchType.EAGER, orphanRemoval = true)
	@CascadeOnDelete
	private List<Work> works = new ArrayList<Work>();
	
	@OneToMany(mappedBy="profile", cascade=CascadeType.ALL, fetch = FetchType.EAGER, orphanRemoval = true)
	@CascadeOnDelete
	private List<Education> educations = new ArrayList<Education>();
	
	@OneToMany(mappedBy="profile", cascade=CascadeType.ALL, fetch = FetchType.EAGER, orphanRemoval = true)
	@CascadeOnDelete
	private List<Phone> phones = new ArrayList<Phone>();
	
	@OneToMany(mappedBy="profile", cascade=CascadeType.ALL, fetch = FetchType.EAGER, orphanRemoval = true)
	@CascadeOnDelete
	private List<Email> emails = new ArrayList<Email>();
	
	private static final long serialVersionUID = 1L;
	public Profile() {
		super();
	}
	
	
	public Profile(String nickName, Gender gender, String dateOfBirth,
			String currentLocation, String hometown, String language,
			String address, User user) {
		super();
		this.nickName = nickName;
		this.gender = gender;
		this.DateOfBirth = dateOfBirth;
		this.CurrentLocation = currentLocation;
		this.hometown = hometown;
		this.Language = language;
		this.address = address;
		this.user = user;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}

	public String getDateOfBirth() {
		return DateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		DateOfBirth = dateOfBirth;
	}

	public String getCurrentLocation() {
		return CurrentLocation;
	}

	public void setCurrentLocation(String currentLocation) {
		CurrentLocation = currentLocation;
	}

	public String getHometown() {
		return hometown;
	}

	public void setHometown(String hometown) {
		this.hometown = hometown;
	}

	public String getLanguage() {
		return Language;
	}

	public void setLanguage(String language) {
		Language = language;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<Work> getWorks() {
		return works;
	}

	public void setWorks(List<Work> works) {
		this.works = works;
	}

	public List<Education> getEducations() {
		return educations;
	}

	public void setEducations(List<Education> educations) {
		this.educations = educations;
	}

	public List<Phone> getPhones() {
		return phones;
	}

	public void setPhones(List<Phone> phones) {
		this.phones = phones;
	}

	public List<Email> getEmails() {
		return emails;
	}

	public void setEmails(List<Email> emails) {
		this.emails = emails;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
