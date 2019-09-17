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
	public Profile createProfile(Profile profile) {
		em.persist(profile);
		em.flush();
		return null;
	}

	@Override
	public void addUserToProfile(User user) {
		User userProfile = em.find(User.class, user.getId());
		
	}
	/*
	 * @Override public Actor update(int id, Actor actor) { EntityManager em =
	 * emf.createEntityManager(); em.getTransaction().begin(); Actor managed =
	 * em.find(Actor.class, id); managed.setFirstName(actor.getFirstName());
	 * managed.setLastName(actor.getLastName()); em.close();
	 * 
	 * return managed; }
	 */

	@Override
	public User editUser(int id, User user) {

		return null;
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

	

}
