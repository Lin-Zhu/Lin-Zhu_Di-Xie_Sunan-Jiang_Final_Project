package neu.edu.cs5200.project;

import java.io.Serializable;
import java.lang.String;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: Email
 *
 */
@Entity
@Table(name = "email")
public class Email implements Serializable {

	   
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private Type type;
	private String emailAddress;
	@ManyToOne
	private Profile profile;
	private static final long serialVersionUID = 1L;

	public Email() {
		super();
	}
	
	public Email(Type type, String emailAddress, Profile profile) {
		super();
		this.type = type;
		this.emailAddress = emailAddress;
		this.profile = profile;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Type getType() {
		return type;
	}

	public void setType(Type type) {
		this.type = type;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
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
