package com.skilldistillery.midterm.entities;

import java.time.LocalDate;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

@Entity
@Table(name="achievement_requirement")
public class AchievementRequirement {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
//	@Column(name="achievement_id")
//	private int achievementId;
	
	@ManyToOne
	@JoinColumn(name="skill_requirement_id")
	private SkillRequirement skillRequirement;
	
//	@Temporal(TemporalType.DATE)
//	@Column(name="date_started")
	
	@Column(name="date_started")
	@Temporal(TemporalType.TIMESTAMP)
	@CreationTimestamp
	private Date dateStarted;

	@Temporal(TemporalType.TIMESTAMP)
	@UpdateTimestamp
	@Column(name="date_completed")
	private Date dateCompleted;
	
	@ManyToOne
	@JoinColumn(name = "achievement_id")
	private Achievement achievement;
	
	
	public AchievementRequirement() {
		
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public SkillRequirement getSkillRequirement() {
		return skillRequirement;
	}


	public void setSkillRequirement(SkillRequirement skillRequirement) {
		this.skillRequirement = skillRequirement;
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


	public Achievement getAchievement() {
		return achievement;
	}


	public void setAchievement(Achievement achievement) {
		this.achievement = achievement;
	}





	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
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
		if (id != other.id)
			return false;
		return true;
	}


	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("AchievementRequirement [id=");
		builder.append(id);
		builder.append(", skillRequirement=");
		builder.append(skillRequirement);
		builder.append(", dateStarted=");
		builder.append(dateStarted);
		builder.append(", dateCompleted=");
		builder.append(dateCompleted);
		builder.append(", achievement=");
		builder.append(achievement);
		builder.append("]");
		return builder.toString();
	}


//	public AchievementRequirement setDateCompleted(LocalDate now) {
//		// TODO Auto-generated method stub
//		return null;
//	}

	
	
	
	
}