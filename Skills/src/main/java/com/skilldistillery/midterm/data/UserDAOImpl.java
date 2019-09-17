package com.skilldistillery.midterm.data;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.midterm.entities.Achievement;
import com.skilldistillery.midterm.entities.Skill;
import com.skilldistillery.midterm.entities.User;

@Transactional
@Service
public class UserDAOImpl implements UserDAO {
	@PersistenceContext
	private EntityManager em;

	@Override
	public List<Skill> skillsLearned() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Achievement> earnedAchievements() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Skill> skillsWanted() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer totalXP() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Achievement createAchievement(Achievement achievement) {
		em.persist(achievement);
		em.flush();

		return achievement;
	}

}

//	@Override
//	public User addUser() {
//		// TODO Auto-generated method stub
//		return null;
//	}
