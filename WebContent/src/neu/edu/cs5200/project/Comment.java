package neu.edu.cs5200.project;

import java.lang.String;

import javax.persistence.*;

@Entity
@Table(name="Comment")
public class Comment {

	   
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String comment;
	
	@ManyToOne
	@JoinColumn(name="UID")
	private User user = null;
	
	@ManyToOne
	@JoinColumn(name="PostID")
	private Post post = null;
	
	
	public Comment() {
		super();
	}   

	
	public Comment(String comment, Post post) {
		super();
		this.comment = comment;
		this.post = post;
	}



	public Comment(String comment, User user, Post post) {
		super();
		this.comment = comment;
		this.user = user;
		this.post = post;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Post getPost() {
		return post;
	}

	public void setPost(Post post) {
		this.post = post;
	}

	
}
