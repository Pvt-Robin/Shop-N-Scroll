package com.arms.shopnscroll.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController 
{
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
	
	@RequestMapping("test")
	public String getTest()
	{
		return "test";
	}
	
}
