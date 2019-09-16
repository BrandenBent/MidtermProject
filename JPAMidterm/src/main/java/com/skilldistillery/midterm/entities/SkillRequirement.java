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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((achievementRequirements == null) ? 0 : achievementRequirements.hashCode());
		result = prime * result + id;
		result = prime * result + ((requirement == null) ? 0 : requirement.hashCode());
		result = prime * result + ((skill == null) ? 0 : skill.hashCode());
		result = prime * result + stepNumber;
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
		SkillRequirement other = (SkillRequirement) obj;
		if (achievementRequirements == null) {
			if (other.achievementRequirements != null)
				return false;
		} else if (!achievementRequirements.equals(other.achievementRequirements))
			return false;
		if (id != other.id)
			return false;
		if (requirement == null) {
			if (other.requirement != null)
				return false;
		} else if (!requirement.equals(other.requirement))
			return false;
		if (skill == null) {
			if (other.skill != null)
				return false;
		} else if (!skill.equals(other.skill))
			return false;
		if (stepNumber != other.stepNumber)
			return false;
		return true;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("SkillRequirement [id=");
		builder.append(id);
		builder.append(", stepNumber=");
		builder.append(stepNumber);
		builder.append(", achievementRequirements=");
		builder.append(achievementRequirements);
		builder.append(", requirement=");
		builder.append(requirement);
		builder.append(", skill=");
		builder.append(skill);
		builder.append("]");
		return builder.toString();
	}

	
	
	
	
	

}
