package com.skilldistillery.midterm.controllers;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.midterm.data.AuthenticationDAO;
import com.skilldistillery.midterm.data.SkillDAO;
import com.skilldistillery.midterm.data.UserDAO;
import com.skilldistillery.midterm.entities.Skill;

@Controller
public class UserController {
	@Autowired
	private SkillDAO dao;

	@Autowired
	private AuthenticationDAO autoDao;
	
	@Autowired
	private UserDAO udao;
	
//	@RequestMapping(path = "startSkill.do", method = RequestMethod.GET)
//	public String startSkill(@RequestParam("fid") Integer id, Model model) {
//		Skill skill = autoDao.findSkillById(id);
//		model.addAttribute("skill", skill);
//		return "skill/userProfile";
//	}
//	@RequestMapping(path = "completeSkill.do", method = RequestMethod.GET)
//	public String completeSkill(@RequestParam("fid") Integer id, Model model) {
//		Skill skill = autoDao.findSkillById(id);
//		model.addAttribute("skill", skill);
//		return "skill/userProfile";
//	}
}
