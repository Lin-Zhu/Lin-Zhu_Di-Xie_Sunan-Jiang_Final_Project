package neu.edu.cs5200.project;

import java.io.Serializable;
import java.lang.String;

import javax.persistence.*;


@Entity
@Table(name = "phone")
public class Phone implements Serializable {

	   
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private Type type;
	private String phoneNum;
	private static final long serialVersionUID = 1L;

	@ManyToOne
	private Profile profile;
	
	public Phone() {
		super();
	}
	
	public Phone(Type type, String phoneNum, Profile profile) {
		super();
		this.type = type;
		this.phoneNum = phoneNum;
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

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
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
