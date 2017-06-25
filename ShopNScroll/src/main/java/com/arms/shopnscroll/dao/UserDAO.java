package com.arms.shopnscroll.dao;

import java.util.List;

import com.arms.shopnscroll.model.BillingAddress;
import com.arms.shopnscroll.model.ShippingAddress;
import com.arms.shopnscroll.model.User;

public interface UserDAO 
{
	public void addUser(User user);
	public List<User> fetchAllUserList();
	public String fetchAllUser();
	public User fetchOneUser(int userId);
	public User fetchUserByUserName(String username);
	public void toggleUserStatus(int userId);
	
	public BillingAddress fetchBillingAddressByUserId(int userId);
	public ShippingAddress fetchShippingAddressByUserId(int userId);
	public void saveBillingAddress(BillingAddress billingAddress);
	public void saveShippingAddress(ShippingAddress shippingAddress);
}
