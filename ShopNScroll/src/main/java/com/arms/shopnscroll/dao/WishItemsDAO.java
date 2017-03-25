package com.arms.shopnscroll.dao;

import java.util.List;

import com.arms.shopnscroll.model.WishItems;

public interface WishItemsDAO 
{
	public void makeWish(WishItems wish);
	public void forgetWish(int wishId);
	public String knowWishes(int userId);
	public WishItems recallWishById(int wishId);
}
