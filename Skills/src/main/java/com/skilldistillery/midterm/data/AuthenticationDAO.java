package com.skilldistillery.midterm.data;

import java.util.List;

import com.skilldistillery.midterm.entities.Profile;
import com.skilldistillery.midterm.entities.Skill;
import com.skilldistillery.midterm.entities.User;

public interface AuthenticationDAO {
	public User createUser(User user);

	public User editUser(int id, User user);

	public Boolean deleteUser(int id);

	public boolean isUserNameUnique(String username);

	public boolean isValidUser(User u);

	User findByUserName(String username);

	public List<User> findAllUsers();

	public Profile createProfile(Profile profile);

	Skill findSkillById(int id);

	public void addUserToProfile(User user);
//List<Skill> findAll();

	User editUser(User user);
}
