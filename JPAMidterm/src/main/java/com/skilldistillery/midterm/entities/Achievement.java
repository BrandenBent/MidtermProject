package com.skilldistillery.midterm.entities;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
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
	
	@ManyToOne
	@JoinColumn(name="skill_id")
	private Skill skill;
	
//	@Column(name="profile_id")
//	private int profileId;
	
	@Temporal(TemporalType.DATE)
	@Column(name="date_started")
	private Date dateStarted;
	
	@ManyToOne
	@JoinColumn(name = "profile_id")
	private Profile profile;

	@OneToMany(mappedBy = "achievement", cascade = CascadeType.ALL)
	List<AchievementRequirement> achievementRequirements;
	
	public void addAchievement(AchievementRequirement achievement) {
		if (achievementRequirements == null)
			achievementRequirements = new ArrayList<>();
		if (!achievementRequirements.contains(achievement)) {
			achievementRequirements.add(achievement);
			if (achievement.getSkillRequirement()!= null) {
				achievement.getSkillRequirement().getAchievementRequirements().remove(achievement);
			}
			achievement.setAchievement(this);
		}
	}

	public void removeAchievement(AchievementRequirement achievement) {
		achievement.setAchievement(null);
		if (achievementRequirements != null) {
			achievementRequirements.remove(achievement);
		}
	}
	
	
	public Achievement() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public Skill getSkill() {
		return skill;
	}

	public void setSkill(Skill skill) {
		this.skill = skill;
	}

	@Override
	public String toString() {
		return "Achievement [id=" + id + ", skill=" + skill + ", dateStarted=" + dateStarted + ", profile=" + profile
				+ ", achievementRequirements=" + achievementRequirements + "]";
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
		Achievement other = (Achievement) obj;
		if (id != other.id)
			return false;
		return true;
	}


	
	
	
	

}
