package com.skilldistillery.midterm.entities;

import java.sql.Date;
import java.sql.Time;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class Profile {
	private int id;
	private int user_id;
	private String name;
	@Column(name="birthday")
	private Date birthDate;
	@Column(name="login_time")
	private Time loginTime;
	@Column(name="image_link")
	private String image;
	
	
	
	public Profile() {
		
	}
	
	
	public Profile(int user_id, String name, Date birthDate, Time loginTime, String image) {
		super();
		this.user_id = user_id;
		this.name = name;
		this.birthDate = birthDate;
		this.loginTime = loginTime;
		this.image = image;
	}




	public Profile(int id, int user_id, String name, Date birthDate, Time loginTime, String image) {
		super();
		this.id = id;
		this.user_id = user_id;
		this.name = name;
		this.birthDate = birthDate;
		this.loginTime = loginTime;
		this.image = image;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public int getUser_id() {
		return user_id;
	}



	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public Date getBirthDate() {
		return birthDate;
	}



	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}



	public Time getLoginTime() {
		return loginTime;
	}



	public void setLoginTime(Time loginTime) {
		this.loginTime = loginTime;
	}



	public String getImage() {
		return image;
	}



	public void setImage(String image) {
		this.image = image;
	}



	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((birthDate == null) ? 0 : birthDate.hashCode());
		result = prime * result + id;
		result = prime * result + ((image == null) ? 0 : image.hashCode());
		result = prime * result + ((loginTime == null) ? 0 : loginTime.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + user_id;
		return result;
	}



	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Profile other = (Profile) obj;
		if (birthDate == null) {
			if (other.birthDate != null)
				return false;
		} else if (!birthDate.equals(other.birthDate))
			return false;
		if (id != other.id)
			return false;
		if (image == null) {
			if (other.image != null)
				return false;
		} else if (!image.equals(other.image))
			return false;
		if (loginTime == null) {
			if (other.loginTime != null)
				return false;
		} else if (!loginTime.equals(other.loginTime))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (user_id != other.user_id)
			return false;
		return true;
	}



	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Profile [id=");
		builder.append(id);
		builder.append(", user_id=");
		builder.append(user_id);
		builder.append(", name=");
		builder.append(name);
		builder.append(", birthDate=");
		builder.append(birthDate);
		builder.append(", loginTime=");
		builder.append(loginTime);
		builder.append(", image=");
		builder.append(image);
		builder.append("]");
		return builder.toString();
	}

	
	
	
	
	
}
