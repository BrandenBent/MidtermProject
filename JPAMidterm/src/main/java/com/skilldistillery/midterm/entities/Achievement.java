package com.skilldistillery.midterm.entities;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Achievement {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name="skill_id")
	private int skillId;
	
//	@Column(name="profile_id")
//	private int profileId;
	
	@Temporal(TemporalType.DATE)
	@Column(name="date_started")
	private Date dateStarted;
	
	@ManyToOne
	@JoinColumn(name = "profile_id")
	private Profile profile;

	@OneToMany(mappedBy = "achievement")
	List<AchievementRequirement> achievementRequirements;
	
//	@ManyToOne
//	@JoinColumn(name = "skill_id")
//	private Skill skill;
	
	
	public Achievement() {
		
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

	public Date getDateStarted() {
		return dateStarted;
	}

	public void setDateStarted(Date dateStarted) {
		this.dateStarted = dateStarted;
	}

	public Profile getProfile() {
		return profile;
	}

	public void setProfile(Profile profile) {
		this.profile = profile;
	}

	public List<AchievementRequirement> getAchievementRequirements() {
		return achievementRequirements;
	}

	public void setAchievementRequirements(List<AchievementRequirement> achievementRequirements) {
		this.achievementRequirements = achievementRequirements;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((achievementRequirements == null) ? 0 : achievementRequirements.hashCode());
		result = prime * result + ((dateStarted == null) ? 0 : dateStarted.hashCode());
		result = prime * result + id;
		result = prime * result + ((profile == null) ? 0 : profile.hashCode());
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
		if (achievementRequirements == null) {
			if (other.achievementRequirements != null)
				return false;
		} else if (!achievementRequirements.equals(other.achievementRequirements))
			return false;
		if (dateStarted == null) {
			if (other.dateStarted != null)
				return false;
		} else if (!dateStarted.equals(other.dateStarted))
			return false;
		if (id != other.id)
			return false;
		if (profile == null) {
			if (other.profile != null)
				return false;
		} else if (!profile.equals(other.profile))
			return false;
		if (skillId != other.skillId)
			return false;
		return true;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Achievement [id=");
		builder.append(id);
		builder.append(", skillId=");
		builder.append(skillId);
		builder.append(", dateStarted=");
		builder.append(dateStarted);
		builder.append(", profile=");
		builder.append(profile);
		builder.append(", achievementRequirements=");
		builder.append(achievementRequirements);
		builder.append("]");
		return builder.toString();
	}

	
	
	
	

}