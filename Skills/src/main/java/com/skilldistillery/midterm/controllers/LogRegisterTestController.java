package com.skilldistillery.midterm.controllers;

import java.time.LocalDate;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.skilldistillery.midterm.data.AuthenticationDAO;
import com.skilldistillery.midterm.data.SkillDAO;
import com.skilldistillery.midterm.data.UserDAO;
import com.skilldistillery.midterm.entities.Profile;
import com.skilldistillery.midterm.entities.User;

@Controller
public class LogRegisterTestController {

	@Autowired
	private AuthenticationDAO adao;

	@Autowired
	private SkillDAO dao;
	
	@Autowired
	private UserDAO udao;
	
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
	public String register(Model model, @ModelAttribute("user")  User user , HttpSession session) {
		User newUser = adao.createUser(user);
		
		session.setAttribute("userlog", newUser);
		
		return "skill/register";
	}

	@RequestMapping(path = "registerProfile.do", method = RequestMethod.POST)
	public String registerProfile(@ModelAttribute("profile") Profile profile , Model model, HttpSession session) {
		
		System.err.println("##########################################");
		profile.setUser((User) session.getAttribute("userlog"));
		System.err.println("##########################################");
		System.out.println(profile);
		System.err.println("##########################################");
		Profile newProfile = adao.createProfile(profile);
		model.addAttribute("profile" , newProfile);
		
		return "skill/userProfile";
	}
	
	
	@RequestMapping(path = "profile.do", method = RequestMethod.POST)
	public String userProfile(Model model) {
		return "skill/userProfile";

		// return "index"; // if using a ViewResolver.
	}
	
	@RequestMapping(path = "login.do", method = RequestMethod.GET)
	public String login(User user, Model model,HttpSession session) {
		User loggeduser = adao.findByUserName(user.getUserName());
		session.setAttribute("userlog", loggeduser);
		return "skill/userProfile";
	
	}
	
		
	
	
//    @RequestMapping(path = "/")
//      public ModelAndView putIndexHere(Model model) {
//          ModelAndView mv = new ModelAndView();
//          mv.setViewName("index");
//          return mv;
//      }

}