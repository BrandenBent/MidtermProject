package com.skilldistillery.midterm.data;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.midterm.entities.Profile;
import com.skilldistillery.midterm.entities.Skill;
import com.skilldistillery.midterm.entities.User;

@Service
@Transactional
public class AuthenticationDAOImpl implements AuthenticationDAO {

	@PersistenceContext
	private EntityManager em;



	@Override
	public User createUser(User user) {
		em.persist(user);
		em.flush();
		return user;
	}

	@Override
	public Profile createProfile(Profile profile) {
		em.persist(profile);
		em.flush();
		return null;
	}

	@Override
	public void addUserToProfile(User user) {
		User userProfile = em.find(User.class, user.getId());
		
	}
	
	@Override
	public User editUser(User user, int id) {
		
			User updateUser = em.find(User.class, user.getId());
			updateUser.setUserName(user.getUserName());
			updateUser.setPassword(user.getPassword());
			updateUser.setEnabled(user.getEnabled());
			updateUser.setRole(user.getRole());
			
		return updateUser;
	}

	@Override
	public Boolean deleteUser(Integer id) {
		User removeUser = em.find(User.class, id);
		try {
			removeUser.setEnabled(false);
			em.persist(removeUser);
			em.flush();
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean isUserNameUnique(String username) {


		return !em.contains(username);
	}

	@Override
	public List<User> findAllUsers() {
		List<User> allUsers = new ArrayList<User>();
		String query = "Select u from User u ";

		return allUsers = em.createQuery(query, User.class).getResultList();
	}

	@Override
	public User findByUserName(String username) {
		String search = "%" + username + "%";
		String qry = "Select u from User u where u.userName like :username";
		return em.createQuery(qry, User.class).setParameter("username", search).getSingleResult();
	}

	@Override
	public boolean isValidUser(User u) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public User findUserById(Integer id) {
		// TODO Auto-generated method stub
		return em.find(User.class, id);
	}

	@Override
	public Skill findSkillById(Integer id) {
		// TODO Auto-generated method stub
		return em.find(Skill.class, id);
	}

	
	

}
