package com.skilldistillery.midterm.data;

import java.util.List;

import com.skilldistillery.midterm.entities.Skill;
import com.skilldistillery.midterm.entities.User;

public interface AuthenticationDAO {
public User createUser(User user);
public Boolean deleteUser(int id);
public boolean isUserNameUnique(String username);
public User getUserByUserName(String username);
public boolean isValidUser(User u);
Skill findSkillById(int id);
//List<Skill> findAll();
}
