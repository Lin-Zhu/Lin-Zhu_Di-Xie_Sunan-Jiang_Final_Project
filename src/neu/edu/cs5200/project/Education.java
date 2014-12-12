package neu.edu.cs5200.project;

import java.io.Serializable;
import java.lang.String;

import javax.persistence.*;

@Entity
@Table(name = "education")
public class Education implements Serializable {

	   
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String Institution;
	private String enrollmentDate;
	private String graduationDate;
	private String Major;
	private String Degree;
	
	@ManyToOne
	private Profile profile;
	private static final long serialVersionUID = 1L;

	public Education() {
		super();
	}
	
	
	public Education(int id, String institution, String enrollmentDate,
			String graduationDate, String major, String degree) {
		super();
		this.id = id;
		Institution = institution;
		this.enrollmentDate = enrollmentDate;
		this.graduationDate = graduationDate;
		Major = major;
		Degree = degree;
	}


	public Education(String institution, String enrollmentDate,
			String graduationDate, String major, String degree, Profile profile) {
		super();
		Institution = institution;
		this.enrollmentDate = enrollmentDate;
		this.graduationDate = graduationDate;
		Major = major;
		Degree = degree;
		this.profile = profile;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getInstitution() {
		return Institution;
	}

	public void setInstitution(String institution) {
		Institution = institution;
	}

	public String getEnrollmentDate() {
		return enrollmentDate;
	}

	public void setEnrollmentDate(String enrollmentDate) {
		this.enrollmentDate = enrollmentDate;
	}

	public String getGraduationDate() {
		return graduationDate;
	}

	public void setGraduationDate(String graduationDate) {
		this.graduationDate = graduationDate;
	}

	public String getMajor() {
		return Major;
	}

	public void setMajor(String major) {
		Major = major;
	}

	public String getDegree() {
		return Degree;
	}

	public void setDegree(String degree) {
		Degree = degree;
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
