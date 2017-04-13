package com.arms.shopnscroll.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.arms.shopnscroll.daoimpl.UserDAOImpl;
import com.arms.shopnscroll.model.BillingAddress;
import com.arms.shopnscroll.model.ShippingAddress;
import com.arms.shopnscroll.model.User;

@Service
@Transactional
public class UserService 
{
	@Autowired
	UserDAOImpl userDAOImpl;
	
	public void addUser(User user)
	{
		userDAOImpl.addUser(user);
	}

	public String fetchAllUser()
	{
		return userDAOImpl.fetchAllUser();
	}
	
	public User fetchOneUser(int userId)
	{
		return userDAOImpl.fetchOneUser(userId);
	}
	
	public User fetchUserByUserName(String username)
	{
		return userDAOImpl.fetchUserByUserName(username);
	}
	
	public void toggleUserStatus(int userId)
	{
		userDAOImpl.toggleUserStatus(userId);
	}
	
	public BillingAddress fetchBillingAddressByUserId(int userId)
	{
		return userDAOImpl.fetchBillingAddressByUserId(userId);
	}
	
	public ShippingAddress fetchShippingAddressByUserId(int userId)
	{
		return userDAOImpl.fetchShippingAddressByUserId(userId);
	}
	
	public void saveBillingAddress(BillingAddress billingAddress)
	{
		userDAOImpl.saveBillingAddress(billingAddress);
	}
	
	public void saveShippingAddress(ShippingAddress shippingAddress)
	{
		userDAOImpl.saveShippingAddress(shippingAddress);
	}
	
	public void editUser(User user)
	{
		userDAOImpl.editUser(user);
	}
	
}
