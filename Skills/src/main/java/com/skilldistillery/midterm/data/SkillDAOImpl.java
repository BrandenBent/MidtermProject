package com.skilldistillery.midterm.data;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.midterm.entities.Achievement;
import com.skilldistillery.midterm.entities.AchievementRequirement;
import com.skilldistillery.midterm.entities.Profile;
import com.skilldistillery.midterm.entities.Resource;
import com.skilldistillery.midterm.entities.Skill;
import com.skilldistillery.midterm.entities.SkillRequirement;
import com.skilldistillery.midterm.entities.User;

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
	public boolean deleteSkill(Integer id) {
		Skill removeSkill = em.find(Skill.class, id);
		try {
			em.remove(removeSkill);
		} catch (Exception e) {
			return false;
		}
		return true;

	}

//	@Override
//	public List<SkillRequirement> findListOfSkillReq(Skill skill){
//		Integer id= skill.getId();
//		String qry = "SELECT skillreq FROM SkillRequirement skillreq WHERE skill."
//		List<SkillRequirement> skillReq = em.createQuery(qry,SkillRequirement.class)
//				.setParameter("id",id)
//				.getResultList();
//		String qry = "SELECT skill FROM Skill skill WHERE skill.name LIKE :keyword OR skill.summary LIKE :keyword OR skill.description LIKE :keyword";
//		List<Skill> skillsKW = em.createQuery(qry, Skill.class).setParameter("keyword", search).getResultList();

//		return null;
//	}

	@Override
	public Achievement findAchievementBySkillIdandProfileId(Integer id, Integer profileId) {

		String qry = "SELECT a FROM Achievement a WHERE a.skillId = :id AND a.profile = :profileId ";
		Profile profile = em.find(Profile.class, profileId);

		return em.createQuery(qry, Achievement.class).setParameter("id", id).setParameter("profileId", profile)
				.getSingleResult();
	}

	@Override
	public SkillRequirement findSkillRequirementBySkillId(Integer id) {

		return em.find(SkillRequirement.class, id);
	}

	@Override
	public List<Skill> findSkillByUserId(Integer Id) {
		List<Skill> skills = new ArrayList<>();
		String Sid = "" + Id;
//			String query = "SELECT skill FROM Skill skill JOIN Achievement achieve ON skill.skill.id = achieve.skill_id "
//					+ "		JOIN Profile profile ON achieve.profile_id = profile.profile.id WHERE profile.user_id = :Sid ";
		String query = "SELECT u.skill from Profile u WHERE u.user_id = ";

//		String qry = "SELECT skill FROM Skill skill WHERE skill.name LIKE :keyword OR skill.summary LIKE :keyword OR skill.description LIKE :keyword";
		return skills = em.createQuery(query, Skill.class).setParameter("Sid" + Sid, Sid).getResultList();
//			em.createQuery("select u.balance from Users u where u.userName = '" + user_name.getText() +"'", Integer.class).getResultList();
	}

	@Override
	public List<SkillRequirement> findListOfSkillReq(Skill skill) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AchievementRequirement aReq(Integer id) {
		// TODO Auto-generated method stub
		return em.find(AchievementRequirement.class, id);
	}

	@Override
	public Resource findLinkById(Integer id) {
		// TODO Auto-generated method stub
		return em.find(Resource.class, id);
	}

	@Override
	public List<Resource> allLinks() {
		List<Resource> links = new ArrayList<Resource>();
		String qry = "Select r from Resource r ";

		return links = em.createQuery(qry, Resource.class).getResultList();
	}

}
