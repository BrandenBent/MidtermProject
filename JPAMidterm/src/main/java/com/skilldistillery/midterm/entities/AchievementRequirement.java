package com.skilldistillery.midterm.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="achievement_requirement")
public class AchievementRequirement {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name="achievement_id")
	private int achievementId;
	@Column(name="skill_requirement_id")
	private int skillRequirementId;
	@Column(name="date_started")
	private Date dateStarted;
	@Column(name="date_completed")
	private Date dateCompleted;
	
	
	public AchievementRequirement() {
		
	}


	public AchievementRequirement(int id, int achievementId, int skillRequirementId, Date dateStarted,
			Date dateCompleted) {
		super();
		this.id = id;
		this.achievementId = achievementId;
		this.skillRequirementId = skillRequirementId;
		this.dateStarted = dateStarted;
		this.dateCompleted = dateCompleted;
	}


	public AchievementRequirement(int achievementId, int skillRequirementId, Date dateStarted, Date dateCompleted) {
		super();
		this.achievementId = achievementId;
		this.skillRequirementId = skillRequirementId;
		this.dateStarted = dateStarted;
		this.dateCompleted = dateCompleted;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getAchievementId() {
		return achievementId;
	}


	public void setAchievementId(int achievementId) {
		this.achievementId = achievementId;
	}


	public int getSkillRequirementId() {
		return skillRequirementId;
	}


	public void setSkillRequirementId(int skillRequirementId) {
		this.skillRequirementId = skillRequirementId;
	}


	public Date getDateStarted() {
		return dateStarted;
	}


	public void setDateStarted(Date dateStarted) {
		this.dateStarted = dateStarted;
	}


	public Date getDateCompleted() {
		return dateCompleted;
	}


	public void setDateCompleted(Date dateCompleted) {
		this.dateCompleted = dateCompleted;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + achievementId;
		result = prime * result + ((dateCompleted == null) ? 0 : dateCompleted.hashCode());
		result = prime * result + ((dateStarted == null) ? 0 : dateStarted.hashCode());
		result = prime * result + id;
		result = prime * result + skillRequirementId;
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
		AchievementRequirement other = (AchievementRequirement) obj;
		if (achievementId != other.achievementId)
			return false;
		if (dateCompleted == null) {
			if (other.dateCompleted != null)
				return false;
		} else if (!dateCompleted.equals(other.dateCompleted))
			return false;
		if (dateStarted == null) {
			if (other.dateStarted != null)
				return false;
		} else if (!dateStarted.equals(other.dateStarted))
			return false;
		if (id != other.id)
			return false;
		if (skillRequirementId != other.skillRequirementId)
			return false;
		return true;
	}


	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("AchievementRequirement [id=");
		builder.append(id);
		builder.append(", achievementId=");
		builder.append(achievementId);
		builder.append(", skillRequirementId=");
		builder.append(skillRequirementId);
		builder.append(", dateStarted=");
		builder.append(dateStarted);
		builder.append(", dateCompleted=");
		builder.append(dateCompleted);
		builder.append("]");
		return builder.toString();
	}
	
	
}
