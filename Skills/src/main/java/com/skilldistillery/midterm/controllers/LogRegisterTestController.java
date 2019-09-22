package com.skilldistillery.midterm.controllers;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
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
		newUser = adao.createUser(user);
		session.setAttribute("userlog", newUser);
		return "skill/userProfile";
	}

	@RequestMapping(path = "registerProfile.do", method = RequestMethod.POST)
	public String registerProfile(@ModelAttribute("profile") Profile profile, Model model, HttpSession session) {
		profile.setUser((User) session.getAttribute("userlog"));
		Profile newProfile = adao.createProfile(profile);
		User user = ((User) session.getAttribute("userlog"));
		user.setProfile(newProfile);
		user = adao.editUser(user, user.getId());
		session.removeAttribute("userlog");
		session.setAttribute("userlog", user);
		model.addAttribute("profile", newProfile);
		List<Skill> f = dao.findAllSkills();
		model.addAttribute("skillset", f);
		return "index";
	}


	@RequestMapping(path = "profile.do", method = RequestMethod.POST)
	public String userProfile(Model model) {
		return "skill/userProfile";

	}

	@RequestMapping(path = "navRegister.do", method = RequestMethod.GET)
	public String navReg(Model model) {
		return "skill/register";

	}


	@RequestMapping(path = "login.do", method = RequestMethod.GET)
    public ModelAndView login(@Valid User user, Errors errors, HttpSession session) {
        ModelAndView mv = new ModelAndView();
        System.out.println(user.getUserName());
        System.out.println(user.getPassword());
        System.out.println("**************************************************");
        User loggeduser = adao.findByUserName(user.getUserName());
        // TODO: If the email was not found, use the Errors object to reject the email,
        // with the message "Email not found"
        if (loggeduser == null) {
            errors.rejectValue("username", "error.username", "Please Enter a Username");
        } else {
            // TODO: Else if the user is not valid (isValidUser), use the Errors object to
            // reject
            // the password with the message "Incorrect password"
            boolean isValidUser = adao.isValidUser(user);
            if (!isValidUser) {
                errors.rejectValue("password", "error.password", "Incorrect password");
            }
        }
        if (errors.getErrorCount() != 0) {
            System.err.println("PLEASE ENTER A PASSWORD, WHY DOESNT THIS WORK");
            mv.setViewName("skill/notFound");
            return mv;
        }
        mv.addObject("user", loggeduser);
        session.setAttribute("userlog", loggeduser);
        mv.setViewName("skill/userProfile");
        return mv;
    }

	@RequestMapping(path = "navLogin.do", method = RequestMethod.GET)
	public String navLog(Model model) {
		return "skill/login";

	}

//	@RequestMapping(path = "login.do", method = RequestMethod.GET)
//	public String login(User user, Model model,HttpSession session) {
//		User loggeduser = adao.findByUserName(user.getUserName());
//		if (loggeduser.getEnabled().equals(false)) {
//			return "skill/notFound";
//		}
//		session.setAttribute("userlog", loggeduser);
//		return "skill/userProfile";
//	}

	@RequestMapping(path = "logout.do", method = RequestMethod.GET)
	public String logout(User user, Model model, HttpSession session) {
		User olduser  = (User) session.getAttribute("userlog");
		User refreshUser = adao.findUserById(olduser.getId());
		session.setAttribute("userlog", refreshUser);

		session.removeAttribute("userlog");

		return "index";
	}


}