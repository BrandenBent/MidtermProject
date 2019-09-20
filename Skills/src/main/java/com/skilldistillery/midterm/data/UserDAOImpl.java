package com.skilldistillery.midterm.data;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skilldistillery.midterm.entities.Achievement;
import com.skilldistillery.midterm.entities.AchievementRequirement;
import com.skilldistillery.midterm.entities.Skill;
import com.skilldistillery.midterm.entities.SkillRequirement;
import com.skilldistillery.midterm.entities.User;

@Transactional
@Service
public class UserDAOImpl implements UserDAO {
	@PersistenceContext
	private EntityManager em;
	@Autowired
	private SkillDAO dao;

	@Override
	public List<Skill> skillsLearned() {
		// TODO Auto-generated method stub
		return null;
	}

	List<AchievementRequirement> achievementRequirements;

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
	@Override
	public AchievementRequirement createAchievementReq(AchievementRequirement achievementReq) {
		em.persist(achievementReq);
		em.flush();

		return achievementReq;
	}
	
	

	@Override
	public List<AchievementRequirement> requirementsMet(Skill skill) {
		// TODO Auto-generated method stub
		return null;
	}

}

//	@Override
//	public User addUser() {
//		// TODO Auto-generated method stub
//		return null;
//	}
