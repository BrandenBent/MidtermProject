package com.skilldistillery.midterm.data;

import java.util.List;

import com.skilldistillery.midterm.entities.Achievement;
import com.skilldistillery.midterm.entities.AchievementRequirement;
import com.skilldistillery.midterm.entities.Skill;
import com.skilldistillery.midterm.entities.SkillRequirement;

public interface SkillDAO {

	public List<Skill> searchBySkillByKeyword(String keyword);

	public Skill createSkill(Skill skill);

	public Skill editSkill(Skill skill, int id);

	public boolean deleteSkill(Integer id);

	public List<Skill> findAllSkills();

	Skill findSkillById(Integer id);

	AchievementRequirement aReq(Integer id);

	SkillRequirement findSkillRequirementBySkillId(Integer id);

	Achievement findAchievementBySkillId(Integer id);


	List<SkillRequirement> findListOfSkillReq(Skill skill);

//	public Integer skillValue();

}
