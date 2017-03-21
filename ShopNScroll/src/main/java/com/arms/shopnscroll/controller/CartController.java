package com.arms.shopnscroll.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.arms.shopnscroll.model.CartItems;
import com.arms.shopnscroll.model.Product;
import com.arms.shopnscroll.model.User;
import com.arms.shopnscroll.service.CartService;
import com.arms.shopnscroll.service.ProductService;
import com.arms.shopnscroll.service.UserService;

@Controller
public class CartController
{
	
	@Autowired
	private CartService CartService; 
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/usercart")
	public String getCart(@PathVariable("productId")int productId,Model model)
	{
		return "user-cart";
	}
	
	@RequestMapping("/addonetocart-{productId}")
	public String addOneToCart(@ModelAttribute("cartItems")CartItems cartItems, @PathVariable("productId")int productId,Principal p, Model model)
	{
		if(p!=null)
		{
		String username = p.getName();
		User user = userService.fetchUserByUserName(username);
		Product product = productService.fetchOneProduct(productId);
		
		return "redirect:/usercart";
		}
		model.addAttribute("commonmessage", "You Must Login To Use Cart!");
		return "redirect:/login";
		
	}
	
	@RequestMapping("/admanytocart-{productId}-{quantity}")
	public String addManyToCart(@PathVariable("productId")int productId,Principal p, Model model)
	{
		if(p!=null)
		{
		String username = p.getName();
		User user = userService.fetchUserByUserName(username);
		Product product = productService.fetchOneProduct(productId);
		
		return "redirect:/usercart";
		}
		model.addAttribute("commonmessage", "You Must Login To Use Cart!");
		return "redirect:/login";
		
	}
	
}