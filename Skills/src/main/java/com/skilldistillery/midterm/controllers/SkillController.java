package com.skilldistillery.midterm.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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

	@Autowired
	private AuthenticationDAO autoDao;

	@RequestMapping(path = "/")
	public String index(Model model) {
		List<Skill> f = dao.findAllSkills();
		model.addAttribute("skillset", f);

		return "index";
		// return "index"; // if using a ViewResolver.
	}

	@RequestMapping(path = "keywordSearch.do", params = "keyword", method = RequestMethod.GET)
	public String searchByKeyword(@RequestParam("keyword") String keyword, Model model) {
		List<Skill> skills = dao.searchBySkillByKeyword(keyword);
		model.addAttribute("skills", skills);
//		return "WEB-INF/film/show.jsp";
		return "skill/skillSearch";
	}

	@RequestMapping(path = "showAllSkills.do", method = RequestMethod.GET)
	public String showAllSkills(Model model) {
		List<Skill> allSkills = dao.findAllSkills();
		model.addAttribute("allSkills", allSkills);
//		return "WEB-INF/film/show.jsp";
		return "skill/allSkills";
	}

	@RequestMapping(path = "getSkill.do", method = RequestMethod.GET)
	public String findSingleSkill(@RequestParam("fid") Integer id, Model model) {
		Skill skill = autoDao.findSkillById(id);
		model.addAttribute("skill", skill);
//		return "WEB-INF/film/show.jsp";
		return "skill/skillSingle";
	}

	/////////////////////////////////////
	// DELETE THIS /////////////////////
	@RequestMapping(path = "crud.do", method = RequestMethod.GET)
	public String crudShit(Model model) {
		Skill skill = new Skill();
		model.addAttribute("skill", skill);
//		return "WEB-INF/film/show.jsp";
		return "skill/crud";
	}

////	createSkill.do
//	@RequestMapping(path = "createSkill.do", method = RequestMethod.POST)
//	public String createBrewery(@ModelAttribute("skill") Skill skill, Model model) {
//		model.addAttribute("skill", skill);
//		dao.createSkill(skill);
//		return "index";
//	}
//
//	@RequestMapping(path = "deletedSkill.do", method = RequestMethod.GET)
//	public String deleted() {
////		TODO
////		dao.deleteFilm(dao.);
//		return "index";
//	}
//
//	@RequestMapping(path = "updateSkill.do", method = RequestMethod.POST)
//	public String updateSkill(@ModelAttribute("skill") Skill skill, Model model) {
//		dao.editSkill(skill);
//		return "index";
//	}

}
