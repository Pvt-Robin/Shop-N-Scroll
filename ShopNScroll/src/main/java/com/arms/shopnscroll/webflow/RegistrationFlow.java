package com.arms.shopnscroll.webflow;

import java.io.Serializable;

import javax.xml.ws.handler.MessageContext;

import org.springframework.stereotype.Component;

import com.arms.shopnscroll.model.User;

@Component
public class RegistrationFlow implements Serializable
{
	public String personalInfoVal(MessageContext messageContext,User user)
	{
		
		return "success";
	}
	
	public String contactInfoVal(MessageContext messageContext,User user)
	{
		
		return "success";
	}
	
	public String passwordInfoVal(MessageContext messageContext,User user)
	{
		
		return "success";
	}
	
	public String addThisUser(MessageContext messageContext,User user)
	{
		
		return "success";
	}
}
