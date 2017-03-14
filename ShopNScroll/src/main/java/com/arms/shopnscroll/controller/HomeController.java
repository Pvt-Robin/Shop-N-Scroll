package com.arms.shopnscroll.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.arms.shopnscroll.service.BrandService;
import com.arms.shopnscroll.service.CategoryService;
import com.arms.shopnscroll.service.ProductService;

@Controller
public class HomeController 
{
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	ProductService productService;

	@Autowired
	BrandService brandService;
	
	@RequestMapping(value={"/","/home"})
	public String getHome(Model model)
	{
		model.addAttribute("categoryList", categoryService.fetchAllCategory());
		//model.addAttribute("productListJSON", productService.fetchAllProductJSON());
		//model.addAttribute("brandListJSON", brandService.fetchAllBrandJSON());
		//System.out.println(productService.fetchAllProductJSON());
		
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