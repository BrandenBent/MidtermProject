package com.skilldistillery.midterm.data;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.midterm.entities.Skill;

@Transactional
@Service
public class SkillDAOImpl implements SkillDAO {
	@PersistenceContext
	private EntityManager em;

	@Override
	public List<Skill> searchBySkillByKeyword(String keyword) {
		List<Skill> list = new ArrayList<>();

		String query = "SELECT s FROM Skill s"; // JOIN FETCH f.actors

		return list = em.createQuery(query, Skill.class).getResultList();
	}

//	@Override
//	public List<Skill> findAll() {
//		
//		
//	List<Skill> list = new ArrayList<>();
//	
//	String query = "SELECT s FROM Skill s"; //JOIN FETCH f.actors
//			
//		return list = em.createQuery(query,Skill.class).getResultList();
//	}

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
	public boolean deleteFilm(Skill skill) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Skill> findAllSkills() {

		List<Skill> list = new ArrayList<>();

		String query = "SELECT s FROM Skill s"; // JOIN FETCH f.actors

		return list = em.createQuery(query, Skill.class).getResultList();
	}
}
