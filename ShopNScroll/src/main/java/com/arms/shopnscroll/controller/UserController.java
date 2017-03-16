package com.arms.shopnscroll.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.arms.shopnscroll.model.User;
import com.arms.shopnscroll.service.UserService;

@Controller
public class UserController 
{
	@Autowired
	UserService userService;
	
	@RequestMapping("/user")
	public String getUserPage(Model model)
	{
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("userListJSON", userService.fetchAllUser());
		
		model.addAttribute("btnLabel","Add");

		return "admin-user";
	}
	
	@RequestMapping("/adduser")
	public String addUser(@Valid @ModelAttribute("user") User user, BindingResult result, Model model)
	{
		if(result.hasErrors())
		{
			model.addAttribute("userListJSON", userService.fetchAllUser());
			
			model.addAttribute("btnLabel","Update");
			
			return"admin-user";
		}
		userService.addUser(user);
		return "redirect:/user";
	}
	
	@RequestMapping("/updateuser")
	public String updateUser(@PathVariable("userId")int userId, Model model)
	{
		
		model.addAttribute("user", userService.fetchOneUser(userId));
		model.addAttribute("userListJSON", userService.fetchAllUser());

		model.addAttribute("btnLabel","Update");
		
		return "admin-user";
	}
	
	@RequestMapping("/signup1")
	public String getSignupStep1()
	{
		return "user-signup-step-1";
	}
	
	@RequestMapping("/signup2")
	public String getSignupStep2()
	{
		return "user-signup-step-2";
	}
	
	@RequestMapping("/signup3")
	public String getSignupStep3()
	{
		return "user-signup-step-3";
	}
	
	@RequestMapping("/userprofile")
	public String userProfile()
	{
		return "user-profile";
	}
	
	
}
