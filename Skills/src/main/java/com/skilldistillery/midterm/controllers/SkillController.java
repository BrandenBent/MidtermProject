package com.skilldistillery.midterm.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.midterm.data.AuthenticationDAO;
import com.skilldistillery.midterm.data.SkillDAO;
import com.skilldistillery.midterm.data.UserDAO;
import com.skilldistillery.midterm.entities.Achievement;
import com.skilldistillery.midterm.entities.AchievementRequirement;
import com.skilldistillery.midterm.entities.Profile;
import com.skilldistillery.midterm.entities.Skill;
import com.skilldistillery.midterm.entities.SkillRequirement;
import com.skilldistillery.midterm.entities.User;

@Controller
public class SkillController {

	@Autowired
	private SkillDAO dao;

	@Autowired
	private AuthenticationDAO autoDao;
	
	@Autowired
	private UserDAO udao;

	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {
		List<Skill> f = dao.findAllSkills();
		model.addAttribute("skillset", f);

		return "index";
	}

	@RequestMapping(path = "keywordSearch.do", params = "keyword", method = RequestMethod.GET)
	public String searchByKeyword(@RequestParam("keyword") String keyword, Model model,HttpSession session) {
		List<Skill> skills = dao.searchBySkillByKeyword(keyword);
		model.addAttribute("skills", skills);
		return "skill/skillSearch";
	}

	@RequestMapping(path = "showAllSkills.do", method = RequestMethod.GET)
	public String showAllSkills(Model model) {
		List<Skill> allSkills = dao.findAllSkills();
		model.addAttribute("allSkills", allSkills);
		return "skill/allSkills";
	}

	@RequestMapping(path = "getSkill.do", method = RequestMethod.GET)
	public String findSingleSkill(@RequestParam("fid") Integer id, Model model) {
		Skill skill = autoDao.findSkillById(id);
		model.addAttribute("skill", skill);
		return "skill/skillSingle";
	}

	@RequestMapping(path = "crud.do", method = RequestMethod.GET)
	public String crudShit(Model model) {
		Skill skill = new Skill();
		model.addAttribute("skill", skill);
		return "skill/crud";
	}
	

	@RequestMapping(path = "createSkill.do", method = RequestMethod.POST)
	public String createSkill(@ModelAttribute("skill") Skill skill, Model model) {
		Skill newSkill = dao.createSkill(skill);
		model.addAttribute("skill", newSkill);
		return "skill/skillSingle";
	}

	@RequestMapping(path = "deletedSkill.do", method = RequestMethod.POST)
	public String deleted(@RequestParam("id") Integer id, Model model) {
		boolean deleteSkill = dao.deleteSkill(id);
		if (deleteSkill) {
			List<Skill> allSkills = dao.findAllSkills();
			model.addAttribute("allSkills", allSkills);
			return "skill/allSkills";
		} else {
			return "index";
		}
	}

	@RequestMapping(path = "editLink.do", method = RequestMethod.GET)
	public String editLink(@RequestParam("id") Integer id, Model model) {
		model.addAttribute("skill", dao.findSkillById(id));
		return "skill/editSkill";
	}

	@RequestMapping(path = "updateSkill.do", method = RequestMethod.POST)
	public String editSkill(Integer id, Skill skill, Model model) {
		Skill editSkill = dao.editSkill(skill, id);
		return "skill/skillSingle";
	}
	@RequestMapping(path = "addSkillToProfile.do", method = RequestMethod.POST)
	public ModelAndView addskilltoProfile(@RequestParam("id")Integer id, Model model, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		Skill addskill = dao.findSkillById(id);
		User user = (User) session.getAttribute("userlog");
		Achievement achieve = new Achievement();
		achieve.setSkillId(addskill.getId());
		achieve.setProfile(user.getProfile());
		udao.createAchievement(achieve);
		session.setAttribute("userlog", user);

		
		
		List<Skill> skills = dao.findSkillByUserId(user.getId());
		mv.addObject("skills", skills);
		for (Skill skill : skills) {
			System.out.println(skill);
		}
		mv.setViewName("skill/userProfile");
		
		
		return mv;
	}
	@RequestMapping(path = "startSkill.do", method = RequestMethod.POST)
	public String addachievementReqtoPro(@RequestParam("fid")Integer selected, Model model,HttpSession session) {
		Skill addskill = dao.findSkillById(selected);
		User user = (User) session.getAttribute("userlog");
		Achievement achieve = dao.findAchievementBySkillId(selected);
		SkillRequirement skillReq = dao.findSkillRequirementBySkillId(selected);
		AchievementRequirement newAchievementReq = new AchievementRequirement();
		newAchievementReq.setAchievement(achieve);
		newAchievementReq.setSkillRequirement(skillReq);
		AchievementRequirement ar = udao.createAchievementReq(newAchievementReq);	
		System.out.println(ar.getId());
		session.setAttribute("userlog", user);
		
		
		return "skill/userProfile";
	}
	
//	@RequestMapping(path = "startSkill.do", method = RequestMethod.POST)
//	public ModelAndView addachievementReqtoPro(@RequestParam("fid")Integer selected, Model model,HttpSession session) {
//		ModelAndView mv = new ModelAndView();
//		Skill addskill = dao.findSkillById(selected);
//		
//		User user = (User) session.getAttribute("userlog");
//		
//		Achievement achieve = dao.findAchievementBySkillId(selected);
//		SkillRequirement skillReq = dao.findSkillRequirementBySkillId(selected);
//		
//		AchievementRequirement newAchievementReq = new AchievementRequirement();
//		newAchievementReq.setAchievement(achieve);
//		newAchievementReq.setSkillRequirement(skillReq);
//		
//		AchievementRequirement ar = udao.createAchievementReq(newAchievementReq);	
//		
//		session.setAttribute("userlog", user);
//		
//		mv.setViewName("skill/userProfile");
//		
//		return mv;
//	}
	
	
	

}
