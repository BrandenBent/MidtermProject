package com.skilldistillery.midterm.data;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;
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
		Profile prof = new Profile();
		user.setEnabled(true);
		user.setRole("user");
		prof.setName(user.getUserName());
		prof.setId(user.getId());
		em.persist(user);
		em.flush();
		return user;
	}

	@Override
	public Profile createProfile(Profile profile) {
		User user = new User();
		profile.setId(user.getId());
		em.persist(profile);
		em.flush();
		return profile;
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
		String query = "Select u from User u";
		allUsers = em.createQuery(query, User.class).getResultList();
		return allUsers;
	}
//	Query query = em.createQuery(“SELECT e FROM Professor e”);
//	   return (Collection<Professor>) query.getResultList();

	@Override
	public User findByUserName(String username) {
		String search = "%" + username + "%";
		String qry = "Select u from User u where u.userName like :username";
		return em.createQuery(qry, User.class).setParameter("username", search).getSingleResult();
	}

	@Override
	public boolean isValidUser(User u) {
		
		if (u == null) {
			return false;
		}
		User checkUser = findByUserName(u.getUserName());
		if (u.getPassword().equals(checkUser.getPassword()))
		{
			return true;
		}
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

	@Override
	public Profile findProfByUID(Integer id) {
		String qry = "Select p from Profile p join User u on u.id = p.user Where u.id = :uid";
		
		
		return em.createQuery(qry, Profile.class).setParameter("uid", id).getSingleResult();
	}

	
	

}
