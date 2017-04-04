package com.arms.shopnscroll.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.AnnotationUtils;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

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
	
	@ModelAttribute("categoryDataList")
	public List userDataJSON()
	{
		return categoryService.fetchAllCategory();
	}
	
	@ModelAttribute("productDataJSON")
	public String userData()
	{
		return productService.fetchAllProductJSON();

	}
	
//	@ResponseStatus(HttpStatus.CONFLICT)  // 409
//    @ExceptionHandler(value=Exception.class)
//    public ModelAndView handleConflict(HttpServletRequest req, Exception e) throws Exception
//	{
//	    if (AnnotationUtils.findAnnotation(e.getClass(), ResponseStatus.class) != null)
//	    {
//	    e.printStackTrace();
//	    throw e;
//	    }
//	    
//	   ModelAndView mav = new ModelAndView();
//	   mav.addObject("exception", e);
//	
//	   return mav;
//	}
	
	
}
