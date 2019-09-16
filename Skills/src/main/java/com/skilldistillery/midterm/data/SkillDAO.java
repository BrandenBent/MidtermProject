package com.skilldistillery.midterm.data;

import java.util.List;

import com.skilldistillery.midterm.entities.Skill;

public interface SkillDAO {

	public List<Skill> searchBySkillByKeyword(String keyword);

	public Skill createSkill(Skill skill);

	public Skill editSkill(Skill skill, int id);

	public boolean deleteSkill(int id);

	public List<Skill> findAllSkills();

	Skill findSkillById(Integer id);

//	public Integer skillValue();

}
