package com.skilldistillery.midterm.clients;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skilldistillery.midterm.data.SkillDAO;
import com.skilldistillery.midterm.data.SkillDAOImpl;
import com.skilldistillery.midterm.entities.Skill;
import com.skilldistillery.midterm.entities.User;

public class SkillTestClient {
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("MidtermPU");
	private static EntityManager em = emf.createEntityManager();

	public static void main(String[] args) {

		SkillTestClient stc = new SkillTestClient();
		Skill newSkill = new Skill("test", "describe", "supply", "summary");
		User newUser = new User("jah", "pwd", true, "user");
//		stc.showAll();
//		stc.createSkill(newSkill);
//		System.out.println(newSkill.toString());
//		stc.deleteSkill(14);
//		stc.create(newUser);
		stc.deleteUser(6);

	}

	public void showAll() {
		List<Skill> list = new ArrayList<>();
		String query = "SELECT s FROM Skill s ";
		list = em.createQuery(query, Skill.class).getResultList();
		for (Skill skill1 : list) {
			System.out.println(skill1.getName());
		}
	}

	public Skill createSkill(Skill skill) {
		em.getTransaction().begin();
		em.persist(skill);
		em.flush();
		em.getTransaction().commit();
		return skill;

	}
	
	public boolean deleteSkill(int id) {
		em.getTransaction().begin();

		Skill removeSkill = em.find(Skill.class, id);
		try {

			em.remove(removeSkill);

		} catch (Exception e) {
			return false;
		}
		em.getTransaction().commit();
		return true;
	}
	
	public User create(User user) {
		em.getTransaction().begin();
		em.persist(user);
		em.flush();
		em.getTransaction().commit();
		return user;
	}
	
	public Boolean deleteUser(int id) {
		em.getTransaction().begin();
		User removeUser = em.find(User.class, id);
		try {
			em.remove(removeUser);
		} catch (Exception e) {
			return false;
		}
		em.getTransaction().commit();
		return true;
	}
}
