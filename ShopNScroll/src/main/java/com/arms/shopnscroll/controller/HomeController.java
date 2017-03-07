package com.arms.shopnscroll.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.arms.shopnscroll.service.CategoryService;

@Controller
public class HomeController 
{
	@Autowired
	CategoryService categoryService;

	@RequestMapping(value={"/","/home"})
	public String getHome(Model model)
	{
		model.addAttribute("categoryList", categoryService.fetchAllCategory());
		
		return "main-home";
	}
	
	@RequestMapping("/cart")
	public String getCart()
	{
		return "main-cart";
	}
	
	@RequestMapping("/login")
	public String getLogin()
	{
		return "main-login";
	}
	
	@RequestMapping("/signup")
	public String getSignUp()
	{
		return "main-signup";
	}
	
	@RequestMapping("/about")
	public String getAbout()
	{
		return "main-about";
	}
	
	@RequestMapping("/contact")
	public String getContact()
	{
		return "main-contact";
	}
	
	@RequestMapping("/faqs")
	public String getFAQs()
	{
		return "main-faqs";
	}
	
	
}