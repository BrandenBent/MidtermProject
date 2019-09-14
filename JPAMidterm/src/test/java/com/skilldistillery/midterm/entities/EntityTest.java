package com.skilldistillery.midterm.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.xml.crypto.Data;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class EntityTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private User user;
	private Achievement achievement;
	private Profile profile;
	private Requirement requirement;
	private Resource resource;
	private Skill skill;
	private AchievementRequirement achievementRequirement;
	private SkillRequirement skillrequirement;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("MidtermPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		user = em.find(User.class, 1);
		achievement = em.find(Achievement.class, 1);
		profile = em.find(Profile.class, 1);
		requirement = em.find(Requirement.class, 1);
		resource = em.find(Resource.class, 1);
		skill = em.find(Skill.class, 1);
		skillrequirement = em.find(SkillRequirement.class, 1);
		achievementRequirement = em.find(AchievementRequirement.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		user = null;
		achievement = null;
		profile = null;
		requirement = null;
		resource = null;
		skill = null;
		achievementRequirement = null;
		skillrequirement= null;
	}

	@Test
	void test_User_entity_mapping() {
		assertEquals("tester", user.getUserName());
		assertEquals("tester", user.getPassword());

	}

	@Test
	void test_Achievement_entity_mapping() {
		assertEquals(1, achievement.getSkillId());
		assertEquals("testerprofile", achievement.getProfile().getName());
		assertEquals(1, achievement.getProfile().getId());
		assertEquals(1, profile.getAchievements().get(0).getProfile().getId());
	}

	@Test
	void test_Profile_entity_mapping() {
		assertEquals(1, profile.getUser().getId());
		assertEquals(1, skill.getProfiles().get(0).getId());
	}

	@Test
	void test_Requirement_entity_mapping() {
		assertEquals("2019-09-13", achievement.getAchievementRequirements().get(0).getDateStarted().toString());
		assertEquals("knot 1", requirement.getName());
		assertEquals(1, achievement.getAchievementRequirements().get(0).getId());
	}
	
	@Test
	void testskillReqMap() {
		assertEquals(1, skill.getSkillRequirements().get(0).getStepNumber());
		assertEquals("Knots", skillrequirement.getSkill().getName());
	}

//	@Test
//	void test_Resource_entity_mapping() {
//		assertEquals("knots",resource.getName());
//		
//	}
	@Test
	void test_Skill_entity_mapping() {
		assertEquals("rope", skill.getSupplies());
		assertEquals("learn how to tie knots", profile.getSkills().get(0).getDescription());

	}

	@Test
	void test_Achievement_Requirement_entity_mapping() {
		assertEquals(1, achievementRequirement.getAchievement().getId());
		assertEquals(1, achievementRequirement.getSkillRequirement().getStepNumber());
		assertEquals(1, skillrequirement.getAchievementRequirements().get(0).getId());
	}

}
