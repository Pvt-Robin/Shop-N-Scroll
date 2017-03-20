package com.arms.shopnscroll.dao;

import com.arms.shopnscroll.model.User;

public interface UserDAO 
{
	public void addUser(User user);
	public String fetchAllUser();
	public User fetchOneUser(int userId);
	public void toggleUserStatus(int userId);
}
