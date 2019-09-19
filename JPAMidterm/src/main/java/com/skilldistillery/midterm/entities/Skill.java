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
	
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "skill_resource", joinColumns = @JoinColumn(name = "skill_id"), inverseJoinColumns = @JoinColumn(name = "resources_id"))
	private List<Resource> resources;
	
	@OneToMany(mappedBy = "skill")
	private List<SkillRequirement> skillRequirements;
	
	@ManyToMany(mappedBy = "skills")
	private List<Profile> profiles;
	
//	@OneToMany(mappedBy = "skill") //sep19
//	private List<Achievement> achievements;
	
	public Skill() {}

	
	public Skill(String name, String description, String supplies, String summary) {
		super();
		this.name = name;
		this.description = description;
		this.supplies = supplies;
		this.summary = summary;
	}


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

	public List<Resource> getResources() {
		return resources;
	}

	public void setResources(List<Resource> resources) {
		this.resources = resources;
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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((description == null) ? 0 : description.hashCode());
		result = prime * result + id;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((profiles == null) ? 0 : profiles.hashCode());
		result = prime * result + ((resources == null) ? 0 : resources.hashCode());
		result = prime * result + ((skillRequirements == null) ? 0 : skillRequirements.hashCode());
		result = prime * result + ((summary == null) ? 0 : summary.hashCode());
		result = prime * result + ((supplies == null) ? 0 : supplies.hashCode());
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
		Skill other = (Skill) obj;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (id != other.id)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (profiles == null) {
			if (other.profiles != null)
				return false;
		} else if (!profiles.equals(other.profiles))
			return false;
		if (resources == null) {
			if (other.resources != null)
				return false;
		} else if (!resources.equals(other.resources))
			return false;
		if (skillRequirements == null) {
			if (other.skillRequirements != null)
				return false;
		} else if (!skillRequirements.equals(other.skillRequirements))
			return false;
		if (summary == null) {
			if (other.summary != null)
				return false;
		} else if (!summary.equals(other.summary))
			return false;
		if (supplies == null) {
			if (other.supplies != null)
				return false;
		} else if (!supplies.equals(other.supplies))
			return false;
		return true;
	}

	
	
	
	
	
	
	
}
