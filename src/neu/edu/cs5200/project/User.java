package neu.edu.cs5200.project;

import java.io.Serializable;
import java.lang.String;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.eclipse.persistence.annotations.CascadeOnDelete;



@Entity
@Table(name = "user")
public class User implements Serializable {

   
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column(unique = true)
	private String username;
	private String password;
	@Column(name="FIRSTNAME")
	private String firstName;
	@Column(name="LASTNAME")
	private String lastName;
	@OneToMany(mappedBy="user", cascade=CascadeType.ALL, fetch = FetchType.EAGER, orphanRemoval = true)
	@CascadeOnDelete
	@JsonIgnore
	private List<Post> posts = new ArrayList<Post>();
	
	@OneToMany(mappedBy="user", cascade=CascadeType.ALL, fetch = FetchType.EAGER, orphanRemoval = true)
	@CascadeOnDelete
	@JsonIgnore
	private List<Comment> comment = new ArrayList<Comment>();
	
	@OneToMany(mappedBy="user", cascade=CascadeType.ALL, fetch = FetchType.EAGER, orphanRemoval = true)
	@CascadeOnDelete
	@JsonIgnore
	private List<ThumbUp> thumbup = new ArrayList<ThumbUp>();
	
	@ManyToMany(cascade=CascadeType.ALL)
	@CascadeOnDelete
	@JsonIgnore
	@JoinTable(name="User_Friends")
	private List<User> friends = new ArrayList<User>();
	
	@OneToMany(cascade=CascadeType.ALL, mappedBy="S_user")
//	@CascadeOnDelete
	@JsonIgnore
	private List<Summoner> summoners = new ArrayList<Summoner>();
	
	@OneToOne(cascade=CascadeType.ALL, optional=false, fetch = FetchType.EAGER)
//	@CascadeOnDelete
	@JsonIgnore
	private Profile profile;
	
	private static final long serialVersionUID = 1L;
	
	
	public User() {
		super();
	}
	

	public User(String username, String password, String firstName,
			String lastName, List<Summoner> summoners) {
		super();
		this.username = username;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.summoners = summoners;
	}

	public User(String username, String password, List<Post> posts,
			List<User> friends) {
		super();
		this.username = username;
		this.password = password;
		this.posts = posts;
		this.friends = friends;
	}

	
	public User(String username, String password, String firstName,
			String lastName, List<Summoner> summoners, Profile profile) {
		super();
		this.username = username;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.summoners = summoners;
		this.profile = profile;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public List<Post> getPosts() {
		return posts;
	}


	public void setPosts(List<Post> posts) {
		this.posts = posts;
	}


	public List<Comment> getComment() {
		return comment;
	}


	public void setComment(List<Comment> comment) {
		this.comment = comment;
	}


	public List<ThumbUp> getThumbup() {
		return thumbup;
	}


	public void setThumbup(List<ThumbUp> thumbup) {
		this.thumbup = thumbup;
	}


	public List<User> getFriends() {
		return friends;
	}


	public void setFriends(List<User> friends) {
		this.friends = friends;
	}


	public List<Summoner> getSummoners() {
		return summoners;
	}


	public void setSummoners(List<Summoner> summoners) {
		this.summoners = summoners;
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
