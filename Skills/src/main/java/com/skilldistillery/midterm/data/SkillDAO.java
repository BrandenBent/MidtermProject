package com.skilldistillery.midterm.data;

import java.util.ArrayList;
import java.util.List;

import com.skilldistillery.midterm.entities.Achievement;
import com.skilldistillery.midterm.entities.AchievementRequirement;
import com.skilldistillery.midterm.entities.Resource;
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

	List<Resource> allLinks();

	List<SkillRequirement> findListOfSkillReq(Skill skill);

	public List<Skill> findSkillByUserId(Integer id);


//	public Integer skillValue();
	Achievement findAchievementBySkillIdandProfileId(Integer id, Integer profileId);

	Resource findLinkById(Integer id);


}
