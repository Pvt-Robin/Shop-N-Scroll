package com.arms.shopnscroll.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.arms.shopnscroll.model.User;
import com.arms.shopnscroll.service.CategoryService;
import com.arms.shopnscroll.service.ProductService;
import com.arms.shopnscroll.service.UserService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@ControllerAdvice
public class SNSController 
{
	@Autowired
	private UserService userService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private ProductService productService;
	
	@ModelAttribute("userData")
	public String NavbarData(Principal p)
	{
		if(p!=null)
		{
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		User user = userService.fetchUserByUserName(p.getName());
		return gson.toJson(user);
		}
		else
		{
			return "[]";
		}
	}
	
	@ModelAttribute("categoryData")
	public List userDataJSON()
	{
		return categoryService.fetchAllCategory();
	}
	
	@ModelAttribute("productDataJSON")
	public String userData()
	{
		return productService.fetchAllProductJSON();

	}
}
