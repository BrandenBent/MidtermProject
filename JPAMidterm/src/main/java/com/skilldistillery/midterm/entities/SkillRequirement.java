package com.skilldistillery.midterm.entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="skill_requirement")
public class SkillRequirement {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
//	@Column(name="skill_id")
//	private int skillId;
	
	@Column(name="step_number")
	private int stepNumber;
	
	@OneToMany(mappedBy = "skillRequirement" )
	List<AchievementRequirement> achievementRequirements;
	
	@ManyToOne
	@JoinColumn(name = "requirement_id")
	private Requirement requirement;
	
	@ManyToOne
	@JoinColumn(name = "skill_id")
	private Skill skill;
	
	public SkillRequirement() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getStepNumber() {
		return stepNumber;
	}

	public void setStepNumber(int stepNumber) {
		this.stepNumber = stepNumber;
	}

	public List<AchievementRequirement> getAchievementRequirements() {
		return achievementRequirements;
	}

	public void setAchievementRequirements(List<AchievementRequirement> achievementRequirements) {
		this.achievementRequirements = achievementRequirements;
	}

	public Requirement getRequirement() {
		return requirement;
	}

	public void setRequirement(Requirement requirement) {
		this.requirement = requirement;
	}

	public Skill getSkill() {
		return skill;
	}

	public void setSkill(Skill skill) {
		this.skill = skill;
	}

	
	
	
	
	

}
