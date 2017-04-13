package com.arms.shopnscroll.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.security.Principal;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.arms.shopnscroll.model.BillingAddress;
import com.arms.shopnscroll.model.Product;
import com.arms.shopnscroll.model.ShippingAddress;
import com.arms.shopnscroll.model.User;
import com.arms.shopnscroll.model.WishItems;
import com.arms.shopnscroll.service.CartService;
import com.arms.shopnscroll.service.ProductService;
import com.arms.shopnscroll.service.UserService;
import com.arms.shopnscroll.service.WishItemsService;

@Controller
public class UserController 
{
	@Autowired
	private UserService userService;
	
	@Autowired
	private WishItemsService wishItemsService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CartService cartService;
	
	private String Data_Folder = "E:\\Workspaces\\ShopNScrollSecond\\ShopNScroll\\src\\main\\webapp\\resources\\data";
	
	@RequestMapping("/user")
	public String getUserPage(Model model)
	{
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("userListJSON", userService.fetchAllUser());
		
		model.addAttribute("btnLabel","Add");

		return "admin-user";
	}
	
	@RequestMapping("/adduser")
	public String addUser(@Valid @ModelAttribute("user") User user, BindingResult result, @RequestParam("userAvatar")MultipartFile userAvatar, Model model,RedirectAttributes redirectAttributes)
	{
		if(result.hasErrors())
		{
			return"redirect:/profile";
		}
		
		user.setUsername(user.getEmail());
		userService.addUser(user);
		
		
		if(!userAvatar.isEmpty()){
			try
			{
				byte[] bytes = userAvatar.getBytes();
				
				File directory = new File(Data_Folder + File.separator);
						if(!directory.exists())
						{
							directory.mkdirs();
						}
						
						File imageFile = new File(directory.getAbsolutePath() + File.separator + "USER-" + user.getUserId() + ".jpg");
						BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(imageFile));
						stream.write(bytes);
						stream.close();
			}
			catch(Exception e)
			{
				e.printStackTrace();
				model.addAttribute("fmessage","Image Upload Failed.try again");
			}
			model.addAttribute("filemessage","Image Upload Successful");
		}
		else
		{
			model.addAttribute("filemessage","Image file is required");
		}
		
		
		return "redirect:/profile";
	}
	
	@RequestMapping("/updateuser-{userId}")
	public String updateUser(@PathVariable("userId")int userId, Model model)
	{
		
		model.addAttribute("user", userService.fetchOneUser(userId));
		model.addAttribute("userListJSON", userService.fetchAllUser());

		model.addAttribute("btnLabel","Update");
		
		return "admin-user";
	}
	
	@RequestMapping("/toggleuser-{userId}")
	public String toggleUser(@PathVariable("userId")int userId,RedirectAttributes redirectAttributes)
	{
		userService.toggleUserStatus(userId);
		return "redirect:/user";
	}
	
	@RequestMapping("/userwish")
	public String getWishes(Model model, Principal p)
	{
		int userId = userService.fetchUserByUserName(p.getName()).getUserId();		
		model.addAttribute("wishListJSON", wishItemsService.knowWishes(userId));
		
		return "user-wish";
	}
	
	@RequestMapping("/addtowishlist-{productId}")
	public String addWishes(@PathVariable("productId")int productId,Principal p,RedirectAttributes redirectAttributes)
	{
		int userId = userService.fetchUserByUserName(p.getName()).getUserId();	
		Product product = productService.fetchOneProduct(productId);
		WishItems wish = new WishItems();

		wish.setUserId(userId);
		wish.setProductId(productId);
		wish.setPrice(product.getPrice());
		wish.setDiscount(product.getDiscount());
		wish.setProductName(product.getProductName());

		wishItemsService.makeWish(wish);
		
		return "redirect:/userwish";
	}
	
	@RequestMapping("/removefromwishlist-{wishId}")
	public String removeWishes(@PathVariable("wishId")int wishId,RedirectAttributes redirectAttributes)
	{
		wishItemsService.forgetWish(wishId);
		
		return "redirect:/userwish";
	}
	
	@RequestMapping("/userorder")
	public String getOrders(Model model,Principal p)
	{
		int userId = userService.fetchUserByUserName(p.getName()).getUserId();	
		model.addAttribute("orderListJSON", cartService.fetchAllOrders(userId));
		
		return "user-order";
	}
	
	@RequestMapping("/profile")
	public String seeProfile(Model model,Principal p)
	{
		try
		{
		int userId = userService.fetchUserByUserName(p.getName()).getUserId();
		model.addAttribute("user", userService.fetchOneUser(userId));
		model.addAttribute("shippingAddr", userService.fetchShippingAddressByUserId(userId));
		model.addAttribute("billingAddr", userService.fetchBillingAddressByUserId(userId));
		}
		catch(Exception e)
		{
			return "redirect:/logout";
		}
		
		return "user-profile";
	}
	
	@RequestMapping("/editprofile")
	public String editUser(@Valid @ModelAttribute("user") User user, BindingResult result, @RequestParam("userAvatar")MultipartFile userAvatar, Model model,RedirectAttributes redirectAttributes)
	{
		if(result.hasErrors())
		{
			return"redirect:/profile";
		}
		
		userService.editUser(user);
		
		
		if(!userAvatar.isEmpty()){
			try
			{
				byte[] bytes = userAvatar.getBytes();
				
				File directory = new File(Data_Folder + File.separator);
						if(!directory.exists())
						{
							directory.mkdirs();
						}
						
						File imageFile = new File(directory.getAbsolutePath() + File.separator + "USER-" + user.getUserId() + ".jpg");
						BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(imageFile));
						stream.write(bytes);
						stream.close();
			}
			catch(Exception e)
			{
				e.printStackTrace();
				model.addAttribute("fmessage","Image Upload Failed.try again");
			}
			model.addAttribute("filemessage","Image Upload Successful");
		}
		else
		{
			model.addAttribute("filemessage","Image file is required");
		}
		
		
		return "redirect:/profile";
	}
	
	@RequestMapping("/editshippingaddress")
	public String updateShippingAddress( @ModelAttribute("shippingAddr")ShippingAddress shippingAddress, BindingResult result, RedirectAttributes redirectAttributes)
	{
		if(result.hasErrors())
		{
			return"redirect:/profile";
		}
		
		userService.saveShippingAddress(shippingAddress);

		return "redirect:/profile";
	}
	
	@RequestMapping("/editbillingaddress")
	public String updateBillingAddress( @ModelAttribute("billingAddr")BillingAddress billingAddress, BindingResult result, RedirectAttributes redirectAttributes)
	{
		if(result.hasErrors())
		{
			return"redirect:/profile";
		}
		userService.saveBillingAddress(billingAddress);

		return "redirect:/profile";
	}
	
}
