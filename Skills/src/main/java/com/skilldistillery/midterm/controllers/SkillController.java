package com.skilldistillery.midterm.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.midterm.data.AuthenticationDAO;
import com.skilldistillery.midterm.data.SkillDAO;
import com.skilldistillery.midterm.entities.Skill;

@Controller
public class SkillController {
	
	@Autowired
	private SkillDAO dao;
	
	@RequestMapping(path= "/")
	public String index(Model model) {
		List<Skill> f = dao.findAllSkills();
		model.addAttribute("skillset", f);
				
	  return "index";
	  // return "index"; // if using a ViewResolver.
	}
	
//	@RequestMapping(path= "/")
//	public String searchKeyword(Model model) {
////		List<Skill> f = dao.findAll();
//		model.addAttribute("skills", skills);
//		
//		return "index";
//		// return "index"; // if using a ViewResolver.
//	}
	
	@RequestMapping(path = "keywordSearch.do", params = "keyword", method = RequestMethod.GET)
	public String searchByKeyword(@RequestParam("keyword") String keyword, Model model) {
		List<Skill> skills = dao.searchBySkillByKeyword(keyword);
		model.addAttribute("skills", skills);
//		return "WEB-INF/film/show.jsp";
		return "skill/skillSearch";
	}
	
}
