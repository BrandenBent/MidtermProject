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
	public Skill findSkillById(Integer id) {
		return em.find(Skill.class, id);
	}

	@Override
	public List<Skill> searchBySkillByKeyword(String keyword) {
		String search = "%" + keyword + "%";
		String qry = "SELECT skill FROM Skill skill WHERE skill.name LIKE :keyword OR skill.summary LIKE :keyword OR skill.description LIKE :keyword";
		List<Skill> skillsKW = em.createQuery(qry, Skill.class).setParameter("keyword", search).getResultList();

		return skillsKW;
	}

	@Override
	public List<Skill> findAllSkills() {
		List<Skill> list = new ArrayList<>();
		String query = "SELECT s FROM Skill s ";

		return list = em.createQuery(query, Skill.class).getResultList();
	}

	@Override
	public Skill createSkill(Skill skill) {
		em.persist(skill);
		em.flush();
		return skill;
	}

	@Override
	public Skill editSkill(Skill skill, int id) {
		Skill updateSkill = em.find(Skill.class, id);
		updateSkill.setName(skill.getName());
		updateSkill.setDescription(skill.getDescription());
		updateSkill.setSupplies(skill.getSupplies());
		updateSkill.setSummary(skill.getSummary());
		updateSkill.setResources(skill.getResources());
		updateSkill.setSkillRequirements(skill.getSkillRequirements());
		updateSkill.setProfiles(skill.getProfiles());

		return updateSkill;
	}

	@Override
	public boolean deleteSkill(int id) {
		System.out.println(em);
		Skill removeSkill = em.find(Skill.class, id);
		try {
			em.remove(removeSkill);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

}