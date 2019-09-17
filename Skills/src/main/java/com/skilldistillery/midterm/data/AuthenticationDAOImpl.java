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
	public User createUser(User user) {
		em.persist(user);
		em.flush();
		return user;
	}
	
	@Override
	public Boolean deleteUser(int id) {
		User removeUser = em.find(User.class, id);
		try {
			em.remove(removeUser);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean isUserNameUnique(String username) {
		// TODO Auto-generated method stub
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
