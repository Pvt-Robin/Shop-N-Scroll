package com.arms.shopnscroll.config;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;
import org.springframework.webflow.mvc.servlet.AbstractFlowHandler;

import com.arms.shopnscroll.model.BillingAddress;
import com.arms.shopnscroll.model.CartItems;
import com.arms.shopnscroll.model.ShippingAddress;
import com.arms.shopnscroll.model.User;
import com.arms.shopnscroll.service.CartService;
import com.arms.shopnscroll.service.UserService;

@Component
public class CheckoutHandler extends AbstractFlowHandler
{
	private String status;
	
	private String username; 
	
	@Autowired
	private UserService userService;
	
	private CartService cartService;
	
	public User initFlow() 
	{
		
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) 
		{
		username = ((UserDetails)principal).getUsername();
		} 
		else
		{
		username = principal.toString();
		}
			User user = userService.fetchUserByUserName(username);
			return user;		
	 }
	
	public BillingAddress initBill(User user)
	{
		BillingAddress billAddr = userService.fetchBillingAddressByUserId(user.getUserId());
		return billAddr;
	}
	
	public ShippingAddress initShip(User user)
	{
		ShippingAddress shipAddr = userService.fetchShippingAddressByUserId(user.getUserId());
		return shipAddr;
	}
	
	public List<CartItems> initCart(User user)
	{
		return cartService.fetchAllItemsByUserId(user.getUserId());
	}
	
	public String validateShippingAddress(ShippingAddress shipAddr,MessageContext messageContext)
	{
		status="success";
		java.util.regex.Pattern patt = java.util.regex.Pattern.compile("^[a-zA-Z,\\s]*$");

		if(shipAddr.getsName().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("sName").defaultText("Required").build());
			status = "failure";
		}
		else
		{
			java.util.regex.Pattern pat = java.util.regex.Pattern.compile("^[a-zA-Z]{3,12}$");
	        java.util.regex.Matcher mat = pat.matcher(shipAddr.getsName());
	        if(!mat.matches())
	        {
			messageContext.addMessage(new MessageBuilder().error().source("sName").defaultText("Cannot Have Number & Symbols.3-12 Characters Long.").build());
			status = "failure";
	        }
		}
		
		if(shipAddr.getsPrefix().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("sPrefix").defaultText("Required").build());
			status = "failure";
		}
		
		if(shipAddr.getsLandmark().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("sLandmark").defaultText("Optional").build());
		}
		
		if(shipAddr.getsStreet().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("sStreet").defaultText("Required").build());
			status = "failure";
		}
		
		if(shipAddr.getsCity().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("sCity").defaultText("Required").build());
			status = "failure";
		}
		else
		{
	        java.util.regex.Matcher mat1 = patt.matcher(shipAddr.getsCity());
	        if(!mat1.matches())
	        {
			messageContext.addMessage(new MessageBuilder().error().source("sName").defaultText("Cannot Have Number & Symbols.").build());
			status = "failure";
	        }
		}
		
		if(shipAddr.getsState().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("sState").defaultText("Required").build());
			status = "failure";
		}
		else
		{
	        java.util.regex.Matcher mat1 = patt.matcher(shipAddr.getsState());
	        if(!mat1.matches())
	        {
			messageContext.addMessage(new MessageBuilder().error().source("sName").defaultText("Cannot Have Number & Symbols.").build());
			status = "failure";
	        }
		}
		
		if(shipAddr.getsCountry().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("sCountry").defaultText("Required").build());
			status = "failure";
		}
		else
		{
	        java.util.regex.Matcher mat1 = patt.matcher(shipAddr.getsCountry());
	        if(!mat1.matches())
	        {
			messageContext.addMessage(new MessageBuilder().error().source("sName").defaultText("Cannot Have Number & Symbols.").build());
			status = "failure";
	        }
		}
		
		if(shipAddr.getsPIN()==0)
		{
			messageContext.addMessage(new MessageBuilder().error().source("sPIN").defaultText("Required").build());
			status = "failure";
		}
		else
		{
			String temp = shipAddr.getsPIN()+"";
			java.util.regex.Pattern pba = java.util.regex.Pattern.compile("^[0-9]{6}$");
	        java.util.regex.Matcher mfn = pba.matcher(temp);
	        boolean pinflag =  mfn.matches();
			if(!pinflag)
			{
				messageContext.addMessage(new MessageBuilder().error().source("sPIN").defaultText("Incorrect PIN").build());
				status = "failure";
			}
		}
		
		if(status.equals("success"))
		{
			try
			{
			userService.saveShippingAddress(shipAddr);
			}
			catch(Exception e)
			{
				return "failure";
			}
		}
		
		return status;
		}
	
	public String validateBillingAddress(BillingAddress billAddr,MessageContext messageContext)
	{
		status="success";
		java.util.regex.Pattern patt = java.util.regex.Pattern.compile("^[a-zA-Z,\\s]*$");
		
		if(billAddr.getbName().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("bName").defaultText("Required").build());
			status = "failure";
		}
		else
		{
			java.util.regex.Pattern pat = java.util.regex.Pattern.compile("^[a-zA-Z]{3,12}$");
	        java.util.regex.Matcher mat = pat.matcher(billAddr.getbName());
	        if(!mat.matches())
	        {
			messageContext.addMessage(new MessageBuilder().error().source("bName").defaultText("Cannot Have Numbers & Symbols.3-12 Characters Long.").build());
			status = "failure";
	        }
		}
		
		if(billAddr.getbPrefix().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("bPrefix").defaultText("Required").build());
			status = "failure";
		}
		
		if(billAddr.getbLandmark().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("bLandmark").defaultText("Optional").build());
		}
		
		if(billAddr.getbStreet().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("bStreet").defaultText("Required").build());
			status = "failure";
		}
		
		if(billAddr.getbCity().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("bCity").defaultText("Required").build());
			status = "failure";
		}
		else
		{
		 	java.util.regex.Matcher mat1 = patt.matcher(billAddr.getbCity());
	        if(!mat1.matches())
	        {
			messageContext.addMessage(new MessageBuilder().error().source("bName").defaultText("Cannot Have Numbers & Symbols.").build());
			status = "failure";
	        }
		}
		
		if(billAddr.getbState().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("bState").defaultText("Required").build());
			status = "failure";
		}
		else
		{
		 	java.util.regex.Matcher mat1 = patt.matcher(billAddr.getbState());
	        if(!mat1.matches())
	        {
			messageContext.addMessage(new MessageBuilder().error().source("bName").defaultText("Cannot Have Numbers & Symbols.").build());
			status = "failure";
	        }
		}
		
		if(billAddr.getbCountry().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("bCountry").defaultText("Required").build());
			status = "failure";
		}
		else
		{
		 	java.util.regex.Matcher mat1 = patt.matcher(billAddr.getbCountry());
	        if(!mat1.matches())
	        {
			messageContext.addMessage(new MessageBuilder().error().source("bName").defaultText("Cannot Have Numbers & Symbols.").build());
			status = "failure";
	        }
		}
		
		if(billAddr.getbPIN()==0)
		{
			messageContext.addMessage(new MessageBuilder().error().source("bPIN").defaultText("Required").build());
			status = "failure";
		}
		else
		{
			String temp = billAddr.getbPIN()+"";
			java.util.regex.Pattern pba = java.util.regex.Pattern.compile("^[0-9]{6}$");
	        java.util.regex.Matcher mfn = pba.matcher(temp);
	        boolean pinflag =  mfn.matches();
			if(!pinflag)
			{
				messageContext.addMessage(new MessageBuilder().error().source("bPIN").defaultText("Incorrect PIN").build());
				status = "failure";
			}
		}
		
		if(status.equals("success"))
		{
			try
			{
			userService.saveBillingAddress(billAddr);
			}
			catch(Exception e)
			{
				return "failure";
			}
		}
		
		return status;
	}
	
	public String assignBillingAddress(ShippingAddress shipadd,BillingAddress billadd)
	{
	status="success";
	
	billadd.setbName(shipadd.getsName());
	billadd.setbPrefix(shipadd.getsPrefix());
	billadd.setbLandmark(shipadd.getsLandmark());
	billadd.setbStreet(shipadd.getsStreet());
	billadd.setbState(shipadd.getsState());
	billadd.setbCity(shipadd.getsCity());
	billadd.setbCountry(shipadd.getsCountry());
	billadd.setbPIN(shipadd.getsPIN());
	
	return status;
	}
	
	public String checkoutCartItems(User user)
	{
		status="success";
		
		try
		{
			
			for(CartItems ci:user.getCartItems())
			{
				System.out.println("*************************************************************************************"+ci.getProductName());
			
			}
			
		}
		catch(Exception e)
		{
			return "failure";
		}
		
		return status;
	}
	
}