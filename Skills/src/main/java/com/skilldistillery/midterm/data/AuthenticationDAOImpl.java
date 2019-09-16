package com.skilldistillery.midterm.data;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.midterm.entities.Skill;
import com.skilldistillery.midterm.entities.User;


@Service
@Transactional
public class AuthenticationDAOImpl implements AuthenticationDAO{

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Skill findSkillById(int id) {
		
		
		return em.find(Skill.class, id);
	}
	
	@Override
	public User create(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isUserNameUnique(String username) {

		
		return false;
	}

	@Override
	public User getUserByUserName(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isValidUser(User u) {
		// TODO Auto-generated method stub
		return false;
	}

}
