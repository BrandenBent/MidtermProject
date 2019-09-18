package com.skilldistillery.midterm.data;

import java.util.List;

import com.skilldistillery.midterm.entities.Achievement;
import com.skilldistillery.midterm.entities.AchievementRequirement;
import com.skilldistillery.midterm.entities.Skill;
import com.skilldistillery.midterm.entities.User;

public interface UserDAO {
	
	public List<Skill> skillsLearned();

	public  List<Achievement> earnedAchievements();
	
	List<AchievementRequirement> requirementsMet(Skill skill);

	public List<Skill> skillsWanted();
	
	public Integer totalXP();
	

	Achievement createAchievement(Achievement achievement);

	
	
//	public User addUser();
	
	//skill in progress method
}