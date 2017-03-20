package com.arms.shopnscroll.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.arms.shopnscroll.daoimpl.UserDAOImpl;
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
	
	public void toggleUserStatus(int userId)
	{
		userDAOImpl.toggleUserStatus(userId);
	}
	
}
