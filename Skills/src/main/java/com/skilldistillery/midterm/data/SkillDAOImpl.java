package com.skilldistillery.midterm.data;

import java.util.List;


import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.midterm.entities.Skill;
@Transactional
@Service
public class SkillDAOImpl implements SkillDAO{
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public List<Skill> searchBySkillByKeyword(String keyword) {
		
		return null;
	}

	@Override
	public Skill createSkill(Skill skill) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Skill editSkill(Skill skill) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean saveSkill(Skill skill) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteSkill(Skill skill) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Skill> findAllSkills() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer skillValue() {
		// TODO Auto-generated method stub
		return null;
	}

	

}
