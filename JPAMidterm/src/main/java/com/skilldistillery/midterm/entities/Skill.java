package com.skilldistillery.midterm.entities;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

@Entity
public class Skill {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String description;
	private String supplies;
	private String summary;
//	@Column(name="prerequisite_skill_id")
//	private int prerequisiteCourse;
	
	@OneToMany(mappedBy = "skill")
	private List<SkillRequirement> skillRequirements;
	
	@ManyToMany(mappedBy = "skills")
	private List<Profile> profiles;
	
	public Skill() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSupplies() {
		return supplies;
	}

	public void setSupplies(String supplies) {
		this.supplies = supplies;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public List<SkillRequirement> getSkillRequirements() {
		return skillRequirements;
	}

	public void setSkillRequirements(List<SkillRequirement> skillRequirements) {
		this.skillRequirements = skillRequirements;
	}

	public List<Profile> getProfiles() {
		return profiles;
	}

	public void setProfiles(List<Profile> profiles) {
		this.profiles = profiles;
	}

	

	
	
	
	
	
	
	
}
