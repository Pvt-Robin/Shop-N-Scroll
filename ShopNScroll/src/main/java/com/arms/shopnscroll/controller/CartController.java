package com.arms.shopnscroll.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String getCart(Principal p,Model model)
	{
		int userId = userService.fetchUserByUserName(p.getName()).getUserId();		
		model.addAttribute("cartItemsListJSON", CartService.fetchAllItemsByUserIdJSON(userId));
		return "user-cart";
	}
	
	@RequestMapping("/addtocart-{productId}-{quantity}")
	public String addOneToCart(@PathVariable("productId")int productId, @PathVariable("quantity")int quantity,Principal p, Model model)
	{
		if(quantity > 3 || quantity <= 0)
		{
			model.addAttribute("commonmessage", "You Cannot Have More than 3 Products");
			return "redirect:/viewproduct-"+productId;
		}
		else
		{
		String username = p.getName();

		CartItems cartItems = new CartItems();
		
		User user = userService.fetchUserByUserName(username);
		Product product = productService.fetchOneProduct(productId);
		
		float rate = product.getPrice();
		int discount = product.getDiscount();
		float amountperunit = rate-(rate*discount/100);
		
		cartItems.setCartId(user.getCartId());
		cartItems.setUserId(user.getUserId());
		cartItems.setProductName(product.getProductName());
		cartItems.setProductId(product.getProductId());
		cartItems.setPrice(product.getPrice());
		cartItems.setDiscount(discount);
		cartItems.setQuantity(quantity);
		cartItems.setAmount(amountperunit * quantity);
		cartItems.setFlag("N");
		
		CartService.addItem(cartItems);
		
		model.addAttribute("commonmessage", "Added To Cart");
		return "redirect:/usercart";
		}
		
	}
	
	@RequestMapping("/removefromcart-{cartItemsId}")
	public String removeFromCart(@PathVariable("cartItemsId")int cartItemsId,Principal p, Model model)
	{
			CartService.removeItem(cartItemsId);
			model.addAttribute("commonmessage", "Removed From Cart");
			return "redirect:/usercart";
	}
	
	
	@RequestMapping("/checkoutfromcart-{cartItemsId}")
	public String checkoutFromCart(@PathVariable("cartItemsId")int cartItemsId,Principal p, Model model)
	{
			CartItems thisItem = CartService.fetchOneItem(cartItemsId);
			
			if(thisItem.getFlag().equals("N"))
			{
			Product product = productService.fetchOneProduct(thisItem.getProductId());
			
			product.setStock(product.getStock() - thisItem.getQuantity());
			productService.addProduct(product);
			
			thisItem.setFlag("Y");
			CartService.addItem(thisItem);
			
			model.addAttribute("commonmessage", "Removed From Cart");
			return "redirect:/usercart";
			}
			
			model.addAttribute("commonmessage", "Operation Interrupted");
			return "redirect:/usercart";
	}
	
}