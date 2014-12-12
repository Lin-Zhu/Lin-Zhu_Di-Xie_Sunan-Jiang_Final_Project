package neu.edu.cs5200.project;

import java.io.Serializable;
import java.lang.String;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.*;

import org.eclipse.persistence.annotations.CascadeOnDelete;

@Entity
@Table(name = "post")
@CascadeOnDelete
public class Post implements Serializable {

	   
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String title;
	private String content;
	@Temporal(TemporalType.DATE)
	private Date date;
	
	@OneToMany(mappedBy="post", cascade=CascadeType.ALL, fetch = FetchType.EAGER, orphanRemoval = true)
	@CascadeOnDelete
	private List<Comment> comment = new ArrayList<Comment>();
	
	@OneToMany(mappedBy="post", cascade=CascadeType.ALL, fetch = FetchType.EAGER, orphanRemoval = true)
	@CascadeOnDelete
	private List<ThumbUp> thumbup = new ArrayList<ThumbUp>();
	
	@ManyToOne
	private User user = null;
	private static final long serialVersionUID = 1L;

	public Post() {
		super();
	}

	public Post(String content, User user) {
		super();
		this.content = content;
		this.user = user;
	}


	public Post(String content) {
		super();
		this.content = content;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
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

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
