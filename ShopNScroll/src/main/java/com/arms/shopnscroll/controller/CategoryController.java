package com.arms.shopnscroll.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
		model.addAttribute("categoryListJSON", categoryService.fetchAllCategoryJSON());
		
		model.addAttribute("btnLabel","Add");
		
		return "admin-category";
	}
	
	@RequestMapping("/updatecategory-{categoryId}")
	public String updateCategory(@PathVariable("categoryId") int categoryId, @ModelAttribute("category") Category category, Model model, RedirectAttributes redirectAttributes)
	{
		model.addAttribute("categoryList", categoryService.fetchAllCategory());
		model.addAttribute("category",categoryService.fetchOneCategory(categoryId));
		model.addAttribute("categoryListJSON", categoryService.fetchAllCategoryJSON());

		model.addAttribute("btnLabel","Update");
		
		return "admin-category";
	}
	
	@RequestMapping(value="/addcategory")
	public String addCategory(@Valid @ModelAttribute("category")Category category,BindingResult result,Model model, RedirectAttributes redirectAttributes)
	{
		if(result.hasErrors())
		{
			model.addAttribute("categoryList", categoryService.fetchAllCategory());
			model.addAttribute("categoryListJSON", categoryService.fetchAllCategoryJSON());
			System.out.println(categoryService.fetchAllCategoryJSON());
			
			model.addAttribute("btnLabel","Update");
			
			return"admin-category";
		}
		
		categoryService.addCategory(category);
		return "redirect:/category";
	}
	
	@RequestMapping("/removecategory-{categoryId}")
	public String removeCategory(@PathVariable("categoryId") int categoryId, RedirectAttributes redirectAttributes)
	{
		categoryService.removeCategory(categoryId);
		return "redirect:/category";
	}
	
}
