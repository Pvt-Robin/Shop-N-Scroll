package com.arms.shopnscroll.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

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

import com.arms.shopnscroll.model.User;
import com.arms.shopnscroll.service.UserService;

@Controller
public class UserController 
{
	@Autowired
	UserService userService;
	
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
	public String addUser(@Valid @ModelAttribute("user") User user, BindingResult result, @RequestParam("userAvatar")MultipartFile userAvatar, Model model)
	{
		if(result.hasErrors())
		{
			model.addAttribute("userListJSON", userService.fetchAllUser());
			
			model.addAttribute("btnLabel","Insert");
			
			return"admin-user";
		}
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
		
		
		return "redirect:/user";
	}
	
	@RequestMapping("/updateuser-{userId}")
	public String updateUser(@PathVariable("userId")int userId, Model model)
	{
		
		model.addAttribute("user", userService.fetchOneUser(userId));
		model.addAttribute("userListJSON", userService.fetchAllUser());

		model.addAttribute("btnLabel","Update");
		
		return "admin-user";
	}
	
	@RequestMapping("toggleuser-{userId}")
	public String toggleUser(@PathVariable("userId")int userId)
	{
		userService.toggleUserStatus(userId);
		return "redirect:/user";
	}
	
	
	@RequestMapping("/signup1")
	public String getSignupStep1(BindingResult result,Model model)
	{	
		return "user-signup-step-2";
	}
	
	@RequestMapping("/signup2")
	public String getSignupStep2(Model model)
	{
		return null;
	}
	
	@RequestMapping("/signup3")
	public String getSignupStep3()
	{
		return "user-signup-step-3";
	}
	
	@RequestMapping("/userprofile")
	public String userProfile()
	{
		return "user-profile";
	}
	
	@RequestMapping("/userorder")
	public String getOrders()
	{
		return "user-orderlist";
	}
}
