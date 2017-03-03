package com.arms.shopnscroll.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.arms.shopnscroll.model.Category;
import com.arms.shopnscroll.service.CategoryService;

@Controller
public class CategoryController 
{
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping("/category")
	public String getCategoryPage(Model model) 
	{
		model.addAttribute("categoryList", categoryService.fetchAllCategory());
		model.addAttribute("category",new Category());
		model.addAttribute("btnLabel","Add");
		
		return "admin-category";
	}
	
	
	@RequestMapping("/updatecategory-{categoryId}")
	public String updateCategory(@PathVariable("categoryId") int categoryId, @ModelAttribute("category") Category category, Model model)
	{
		model.addAttribute("categoryList", categoryService.fetchAllCategory());
		model.addAttribute("category",categoryService.fetchOneCategory(categoryId));
		model.addAttribute("btnLabel","Update");
		
		return "admin-category";
	}
	
	@RequestMapping(value="/addcategory")
	public String addCategory(@ModelAttribute("category")Category category)
	{
		categoryService.addCategory(category);
		return "redirect:/category";
	}
	
	@RequestMapping("/removecategory-{categoryId}")
	public String removeCategory(@PathVariable("categoryId") int categoryId)
	{
		categoryService.removeCategory(categoryId);
		return "redirect:/category";
	}
	
}
