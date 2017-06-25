package com.arms.shopnscroll.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.arms.shopnscroll.daoimpl.CartDAOImpl;
import com.arms.shopnscroll.model.CartItems;

@Service
@Transactional
public class CartService 
{
	@Autowired
	CartDAOImpl cartDAOImpl;
	
	public String fetchAllItemsByUserIdJSON(int userId)
	{
		return cartDAOImpl.fetchAllItemsByUserIdJSON(userId);
	}
	
	public CartItems fetchOneItem(int cartItemsId)
	{
		return cartDAOImpl.fetchOneItem(cartItemsId);
	}
	
	public void addItem(CartItems cartItems)
	{
		cartDAOImpl.addItem(cartItems);
	}

	public void removeItem(int cartItemsId)
	{
		cartDAOImpl.removeItem(cartItemsId);
	}
	
	public String fetchAllOrders(int userId)
	{
		return cartDAOImpl.fetchAllOrders(userId);
	}
	
	public List<CartItems> fetchAllItemsByUserId(int userId)
	{
		return cartDAOImpl.fetchAllItemsByUserId(userId);
	}

}
