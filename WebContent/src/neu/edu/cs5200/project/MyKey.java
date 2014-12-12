package neu.edu.cs5200.project;

import java.io.Serializable;

public class MyKey implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private int user;
	private int post;
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MyKey other = (MyKey) obj;
		if (post != other.post)
			return false;
		if (user != other.user)
			return false;
		return true;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + post;
		result = prime * result + user;
		return result;
	}

	
	public int getUser() {
		return user;
	}

	public void setUser(int user) {
		this.user = user;
	}

	public int getPost() {
		return post;
	}


	public void setPost(int post) {
		this.post = post;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
