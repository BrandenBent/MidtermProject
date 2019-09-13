package com.skilldistillery.midterm.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="skill_requirement")
public class SkillRequirement {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column(name="skill_id")
	private int skillId;
	@Column(name="step_number")
	private int stepNumber;
	
	public SkillRequirement() {
		
	}

	public SkillRequirement(int id, int skillId, int stepNumber) {
		super();
		this.id = id;
		this.skillId = skillId;
		this.stepNumber = stepNumber;
	}

	public SkillRequirement(int skillId, int stepNumber) {
		super();
		this.skillId = skillId;
		this.stepNumber = stepNumber;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		result = prime * result + skillId;
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
		if (id != other.id)
			return false;
		if (skillId != other.skillId)
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
		builder.append(", skillId=");
		builder.append(skillId);
		builder.append(", stepNumber=");
		builder.append(stepNumber);
		builder.append("]");
		return builder.toString();
	}
	
	

}
