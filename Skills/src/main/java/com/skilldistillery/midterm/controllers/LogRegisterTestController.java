package com.skilldistillery.midterm.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.midterm.data.AuthenticationDAO;
import com.skilldistillery.midterm.entities.Skill;

@Controller
public class LogRegisterTestController {

	
	@Autowired
	private AuthenticationDAO dao;
	
	@RequestMapping(path= "/")
	public String index(Model model) {
		List<Skill> f = dao.findAll();
		model.addAttribute("skillset", f);
				
	  return "index";
	  // return "index"; // if using a ViewResolver.
	}
	
//	  @RequestMapping(path = "/")
//	    public ModelAndView putIndexHere(Model model) {
//	        ModelAndView mv = new ModelAndView();
//	        mv.setViewName("index");
//	        return mv;
//	    }
	
}

