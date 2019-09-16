package com.skilldistillery.midterm.data;

import java.util.List;

import com.skilldistillery.midterm.entities.Skill;

public interface SkillDAO {

	public List<Skill> searchBySkillByKeyword(String keyword);

	public Skill createSkill(Skill skill);

	public Skill editSkill(Skill skill);

	public boolean saveSkill(Skill skill);

	public boolean deleteFilm(Skill skill);

	public List<Skill> findAllSkills();

}
