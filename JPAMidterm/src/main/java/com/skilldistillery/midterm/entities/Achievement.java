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

	
	
	
	

}
