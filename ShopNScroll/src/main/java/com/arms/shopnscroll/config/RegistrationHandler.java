package com.arms.shopnscroll.config;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;
import org.springframework.webflow.mvc.servlet.AbstractFlowHandler;

import com.arms.shopnscroll.model.User;
import com.arms.shopnscroll.service.UserService;

@Component
public class RegistrationHandler extends AbstractFlowHandler 
{
	
	private String status;
	
	@Autowired
	private UserService userService;
	
	public User initFlow() {
		return new User();
	}

	public String validatePersonalDetails(User user, MessageContext messageContext) 
	{
		status = "success";

		Pattern pfn = Pattern.compile("^[a-zA-Z]{3,12}$");
        Matcher mfn = pfn.matcher(user.getFirstName());
        boolean fnameflag =  mfn.matches();
		
		if (user.getFirstName().isEmpty()) 
		{
			messageContext.addMessage(new MessageBuilder().error().source("firstName").defaultText("First Name is Required").build());
			status = "failure";
		}
		else if (!fnameflag) 
		{
			messageContext.addMessage(new MessageBuilder().error().source("firstName").defaultText("Should Be 3-12 Characters Long").build());
			status = "failure";
		}
		else
		{
//			DO NOTHING
		}

		Matcher mln = pfn.matcher(user.getLastName());
        boolean lnameflag =  mln.matches();
		
		if (user.getLastName().isEmpty()) 
		{
			messageContext.addMessage(new MessageBuilder().error().source("lastName").defaultText("Last Name is Required").build());
			status = "failure";
		}
		else if (!lnameflag) 
		{
			messageContext.addMessage(new MessageBuilder().error().source("lastName").defaultText("Should Be 3-12 Characters Long").build());
			status = "failure";
		}

		if (user.getDateOfBirth().isEmpty()) 
		{
			messageContext.addMessage(new MessageBuilder().error().source("dateOfBirth").defaultText("Date is Required").build());
			status = "failure";
		}
//		else 
//		{
//		if(!dobflag)
//		{
//			messageContext.addMessage(new MessageBuilder().error().source("dateOfBirth").defaultText("Age Limit 12-80").build());
//			status = "failure";
//		}
//		}
		
		if (user.getGender().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("gender").defaultText("Gender is Required").build());
			status = "failure";
		}
		else
		{
			if (user.getGender().equalsIgnoreCase("Male") || user.getGender().equalsIgnoreCase("Female"))
			{
//				DO NOTHING
			}
			else
			{
				messageContext.addMessage(new MessageBuilder().error().source("gender").defaultText("Gender is Incorrect").build());
				status = "failure";
			}
		}
		
		return status;
	}
	
	public String validateContactDetails(User user, MessageContext messageContext) 
	{
		status = "success";
		
		String ePattern = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$";
        Pattern p = Pattern.compile(ePattern);
        Matcher m = p.matcher(user.getEmail());
        boolean emailflag =  m.matches();
        
		if (user.getEmail().isEmpty()) 
		{
			messageContext.addMessage(new MessageBuilder().error().source("email").defaultText("Email Cannot be Empty").build());
			status = "failure";
		}
		else if(!emailflag)
		{
			messageContext.addMessage(new MessageBuilder().error().source("email").defaultText("Invalid Email Format").build());
			status = "failure";
		}
		else
		{
			List<User> userList = userService.fetchAllUserList();
			for(User existinguser:userList)
			{
			if(existinguser.getEmail().equals(user.getEmail()))
			{
				messageContext.addMessage(new MessageBuilder().error().source("email").defaultText("Email Already Exists").build());
				status = "failure";
			}
			}
		}
		
        Pattern p1 = Pattern.compile("^[4-9]{1}[0-9]{9}$");
        Matcher m1 = p1.matcher(user.getContact());
        boolean noonly =  m1.matches();
        
		if (user.getContact().isEmpty()) 
		{
			messageContext.addMessage(new MessageBuilder().error().source("contact").defaultText("Contact Number Cannot Be Empty").build());
			status = "failure";
		}
		else if(!noonly)
		{
			messageContext.addMessage(new MessageBuilder().error().source("contact").defaultText("Invalid Mobile Number Format").build());
			status = "failure";
		}

		return status;

	}
	
	public String validatePasswordDetails(User user, MessageContext messageContext) 
	{	
		status = "success";
		
        if (user.getPassword().isEmpty()) 
		{
			messageContext.addMessage(new MessageBuilder().error().source("password").defaultText("Password Is Required").build());
			status = "failure";
		}
        else
		{
        	Pattern pass = Pattern.compile("((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{8,16})");
            Matcher mpass = pass.matcher(user.getPassword());
            boolean strongpassword =  mpass.matches();
            
            if(!strongpassword)
            {
			messageContext.addMessage(new MessageBuilder().error().source("password").defaultText("Password Is Weak.Follow Below Rules").build());
			status = "failure";
            }
		}

		return status;

	}

	public String addNewUser(User user, MessageContext messageContext)throws Exception 
	{
		
		try
		{	
			user.setUsername(user.getEmail().toLowerCase());
			userService.addUser(user);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return "failure";
		}

		return "success";
	
	}

//	OTHER HELPER FNS
	
	//Check Date Format
	public static boolean isTimeStampValid(String inputString)
	{ 
	    SimpleDateFormat dateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd");
	    try{
	       dateFormat.parse(inputString);
	       return true;
	    }
	    catch(ParseException e)
	    {
	        return false;
	    }
	}
	
//	//FIND AGE
//	public static int calculateAge(LocalDate birthDate) 
//	{
//	LocalDate currentDate = LocalDate.now();
//	if ((birthDate != null) && (currentDate != null)) 
//	        {
//	            return Period.between(birthDate, currentDate).getYears();
//	        } 
//			else
//			{
//	            return 0;
//	        }
//	}
}