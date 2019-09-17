package com.skilldistillery.midterm.controllers;

import java.time.LocalDate;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.midterm.data.AuthenticationDAO;
import com.skilldistillery.midterm.data.SkillDAO;
import com.skilldistillery.midterm.entities.Profile;
import com.skilldistillery.midterm.entities.User;

@Controller
public class LogRegisterTestController {
	@Autowired
	private AuthenticationDAO adao;

	@Autowired
	private SkillDAO dao;
//session.addattribute.setatt , HttpSession session
	/*
	 * boolean deleteVenue = dao.destroy(id);
		if (deleteVenue) {
			List<Venue> allVenues = dao.findAll();
			model.addAttribute("allVenues", allVenues);
			return "index";
		} else {
			return "venu/error";
		}
	 */
	
	/*
	 *  @InitBinder
    public void initBinder(WebDataBinder webDataBinder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        webDataBinder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }
	 */
	@RequestMapping(path = "register.do", method = RequestMethod.POST)
	public String register(Model model, @ModelAttribute("user")  User user) {
		User newUser = adao.createUser(user);
		model.addAttribute("user", newUser);
		return "skill/register";
	}

	@RequestMapping(path = "registerProfile.do", method = RequestMethod.POST)
	public String registerProfile(@ModelAttribute("profile") Profile profile, Date date , Model model) {
		Profile newProfile = adao.createProfile(profile);
		model.addAttribute("profile" , newProfile);
		return "skill/userProfile";
	}
	
	
	@RequestMapping(path = "profile.do", method = RequestMethod.POST)
	public String userProfile(Model model) {
		return "skill/userProfile";

		// return "index"; // if using a ViewResolver.
	}
//    @RequestMapping(path = "/")
//      public ModelAndView putIndexHere(Model model) {
//          ModelAndView mv = new ModelAndView();
//          mv.setViewName("index");
//          return mv;
//      }

}
