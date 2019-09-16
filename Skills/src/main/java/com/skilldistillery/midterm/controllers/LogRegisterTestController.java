package com.skilldistillery.midterm.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.midterm.data.AuthenticationDAO;

@Controller
public class LogRegisterTestController {

	@Autowired
	private AuthenticationDAO dao;

	@RequestMapping(path = "profile.do", method = RequestMethod.POST)
	public String index(Model model) {
		return "skill/userProfile";
		// return "index"; // if using a ViewResolver.
	}

//	  @RequestMapping(path = "/")
//	    public ModelAndView putIndexHere(Model model) {
//	        ModelAndView mv = new ModelAndView();
//	        mv.setViewName("index");
//	        return mv;
//	    }

}
