package com.arms.shopnscroll.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController 
{
	@RequestMapping(value={"/","/home"})
	public String getHome()
	{
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
	
	@RequestMapping("/admin")
	public String getAdminLogin()
	{
		return "main-adminlogin";
	}
	
	@RequestMapping("/control")
	public String getControl()
	{
		return "admin-tools";
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