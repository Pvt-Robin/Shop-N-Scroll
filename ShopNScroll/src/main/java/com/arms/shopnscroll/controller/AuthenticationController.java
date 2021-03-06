package com.arms.shopnscroll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AuthenticationController 
{
	@RequestMapping("/login")
	public String getLogin()
	{
		return "main-login";
	}
	
	@RequestMapping("/logout")
	public String getLogout(HttpServletRequest request, HttpServletResponse response )
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(auth!=null)
		{
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "main-login";
	}
	
	@RequestMapping("/accessdenied")
	public String getAcessDenied()
	{
		return "component-accessdenied";
	}

	@RequestMapping("/serverdown")
	public String getServerDown()
	{
		return "component-serverdown";
	}
	
	@RequestMapping("/404")
	public String getNoSuchPlace()
	{
		return "component-nosuchplace";
	}
	
}