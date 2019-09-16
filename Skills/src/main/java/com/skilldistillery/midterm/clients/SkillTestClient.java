package com.skilldistillery.midterm.clients;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.skilldistillery.midterm.data.SkillDAOImpl;
import com.skilldistillery.midterm.entities.Skill;

public class SkillTestClient {

	public static void main(String[] args) {
		SkillDAOImpl dao = new SkillDAOImpl();
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("MidtermPU");
		EntityManager em = emf.createEntityManager();
		Skill skill = em.find(Skill.class, 1);
		System.out.println(skill);
//		Skill skill = new Skill();
//		skill = dao.findSkillById(4);
//		List<Skill> all = dao.findAllSkills();
//		for (Skill skill2 : all) {
//			System.out.println(skill2);
			
//		}
	}

}
