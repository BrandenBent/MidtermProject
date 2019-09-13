package com.skilldistillery.midterm.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Achievement {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name="skill_id")
	private int skillId;
	@Column(name="profile_id")
	private int profileId;
	@Column(name="date_started")
	private Date dateStarted;
	
	public Achievement() {
		
	}

	public Achievement(int id, int skillId, int profileId, Date dateStarted) {
		super();
		this.id = id;
		this.skillId = skillId;
		this.profileId = profileId;
		this.dateStarted = dateStarted;
	}

	public Achievement(int skillId, int profileId, Date dateStarted) {
		super();
		this.skillId = skillId;
		this.profileId = profileId;
		this.dateStarted = dateStarted;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getSkillId() {
		return skillId;
	}

	public void setSkillId(int skillId) {
		this.skillId = skillId;
	}

	public int getProfileId() {
		return profileId;
	}

	public void setProfileId(int profileId) {
		this.profileId = profileId;
	}

	public Date getDateStarted() {
		return dateStarted;
	}

	public void setDateStarted(Date dateStarted) {
		this.dateStarted = dateStarted;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Achievement [id=");
		builder.append(id);
		builder.append(", skillId=");
		builder.append(skillId);
		builder.append(", profileId=");
		builder.append(profileId);
		builder.append(", dateStarted=");
		builder.append(dateStarted);
		builder.append("]");
		return builder.toString();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((dateStarted == null) ? 0 : dateStarted.hashCode());
		result = prime * result + id;
		result = prime * result + profileId;
		result = prime * result + skillId;
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
		Achievement other = (Achievement) obj;
		if (dateStarted == null) {
			if (other.dateStarted != null)
				return false;
		} else if (!dateStarted.equals(other.dateStarted))
			return false;
		if (id != other.id)
			return false;
		if (profileId != other.profileId)
			return false;
		if (skillId != other.skillId)
			return false;
		return true;
	}
	
	
	

}
