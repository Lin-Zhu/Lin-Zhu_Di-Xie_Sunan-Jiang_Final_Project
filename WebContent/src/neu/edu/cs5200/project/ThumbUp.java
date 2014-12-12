package neu.edu.cs5200.project;

import javax.persistence.*;

@Entity 
@IdClass(MyKey.class)
@Table(name="ThumbUp")

public class ThumbUp {
	@Id
	@ManyToOne
	@JoinColumn(name="UserID")
	private User user = null;
	
	@Id
	@ManyToOne
	@JoinColumn(name="PostID")
	private Post post = null;
	
	
	public ThumbUp() {
		super();
	}

	public ThumbUp(User user, Post post) {
		super();
		this.user = user;
		this.post = post;
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
