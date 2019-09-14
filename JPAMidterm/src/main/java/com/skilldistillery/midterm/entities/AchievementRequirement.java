package com.skilldistillery.midterm.entities;

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
	
	@Temporal(TemporalType.DATE)
	@Column(name="date_started")
	private Date dateStarted;

	@Temporal(TemporalType.DATE)
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

	
	
	
	
}
