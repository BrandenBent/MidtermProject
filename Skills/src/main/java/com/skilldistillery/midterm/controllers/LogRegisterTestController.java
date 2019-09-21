package com.skilldistillery.midterm.controllers;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.skilldistillery.midterm.data.AuthenticationDAO;
import com.skilldistillery.midterm.data.SkillDAO;
import com.skilldistillery.midterm.data.UserDAO;
import com.skilldistillery.midterm.entities.Profile;
import com.skilldistillery.midterm.entities.Skill;
import com.skilldistillery.midterm.entities.User;

@Controller
public class LogRegisterTestController {

	@Autowired
	private AuthenticationDAO adao;

	@Autowired
	private SkillDAO dao;

	@Autowired
	private UserDAO udao;

	@RequestMapping(path = "admin.do")
	public String index(Model model) {
//		List<User> users = adao.findAllUsers();
//		model.addAttribute("users", users);

		return "skill/admin";
	}

	@RequestMapping(path = "allUsers.do")
	public String allUsers(Model model) {
		List<User> users = adao.findAllUsers();
		model.addAttribute("users", users);

		return "skill/allUsers";
	}
	
	@RequestMapping(path = "getUser.do", method = RequestMethod.GET)
	public String findSingleUser(@RequestParam("id") Integer id, String userName, Model model) {
		User user = adao.findUserById(id);
		model.addAttribute("user", user);
		return "skill/editUser";
	}

	@RequestMapping(path = "showUser.do", method = RequestMethod.GET)
	public String SingleUser(@RequestParam("id") Integer id, String userName, Model model) {
		User user = adao.findUserById(id);
		System.out.println(user);
		model.addAttribute("user", user);
		return "skill/userProfile";
	}

	@RequestMapping(path = "deleteUser.do", method = RequestMethod.POST)
	public String deleted(@RequestParam("id") Integer id, Model model) {
		boolean deleteUser = adao.deleteUser(id);
		if (deleteUser) {
			List<User> users = adao.findAllUsers();
			model.addAttribute("user", users);
			return "skill/admin";
		} else {
			return "index";
		}
	}

	@RequestMapping(path = "editUserLink.do", method = RequestMethod.GET)
	public String editLink(@RequestParam("id") Integer id, Model model) {
		model.addAttribute("user", adao.findUserById(id));
		return "skill/editUser";
	}

	@RequestMapping(path = "editUser.do", method = RequestMethod.POST)
	public String editUser(Integer id, User user, Model model) {
		User editUser = adao.editUser(user, id);
		List<User> users = adao.findAllUsers();
		model.addAttribute("users", users);
		return "skill/admin";
	}

	@RequestMapping(path = "register.do", method = RequestMethod.POST)
	public String register(Model model, @ModelAttribute("user") User user, HttpSession session) {
		User newUser = new User();
		newUser.setEnabled(true);
		newUser.setRole("user");
		newUser = adao.createUser(user);
		session.setAttribute("userlog", newUser);
		return "skill/register";
	}

	@RequestMapping(path = "registerProfile.do", method = RequestMethod.POST)
	public String registerProfile(@ModelAttribute("profile") Profile profile, Model model, HttpSession session) {
		User user = new User();
		profile.setUser((User) session.getAttribute("userlog"));
		Profile newProfile = adao.createProfile(profile);
		user.setEnabled(true);
		user.setRole("user");
		model.addAttribute("profile", newProfile);

		return "skill/userProfile";
	}

	@RequestMapping(path = "profile.do", method = RequestMethod.POST)
	public String userProfile(Model model) {
		return "skill/userProfile";

	}

	@RequestMapping(path = "navRegister.do", method = RequestMethod.GET)
	public String navReg(Model model) {
		return "skill/register";

	}

	@RequestMapping(path = "navLogin.do", method = RequestMethod.GET)
	public String navLog(Model model) {
		return "skill/login";

	}

	@RequestMapping(path = "login.do", method = RequestMethod.GET)
	public String login(User user, Model model, HttpSession session) {
		User loggeduser = adao.findByUserName(user.getUserName());
		if (loggeduser.getEnabled().equals(false)) {
			return "skill/notFound";
		}
		session.setAttribute("userlog", loggeduser);
		return "skill/userProfile";

	}

	@RequestMapping(path = "logout.do", method = RequestMethod.GET)
	public String logout(User user, Model model, HttpSession session) {
		User refreshUser = adao.findUserById(user.getId());
		session.setAttribute("userlog", refreshUser);

		session.removeAttribute("userlog");

		return "index";
	}

}