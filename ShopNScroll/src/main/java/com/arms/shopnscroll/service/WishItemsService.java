package com.arms.shopnscroll.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.arms.shopnscroll.daoimpl.WishItemsDAOImpl;
import com.arms.shopnscroll.model.WishItems;

@Service
@Transactional
public class WishItemsService 
{
	@Autowired
	private WishItemsDAOImpl wishItemsDAOImpl;
	
	public String knowWishes(int userId) 
	{
		return wishItemsDAOImpl.knowWishes(userId);
	}
	
	public void makeWish(WishItems wish)
	{
		wishItemsDAOImpl.makeWish(wish);
	}
	
	public void forgetWish(int wishId)
	{
		wishItemsDAOImpl.forgetWish(wishId);
	}
}
