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
	
	public List<CartItems> fetchAllItems(int userId)
	{
		return cartDAOImpl.fetchAllItems(userId);
	}
	
	public void addOneItem()
	{
		
	}
	
	public void addManyItems()
	{
		
	}
	
	public void removeItem(int product)
	{
		
	}
	
	public void checkOutItems(int[] productList)
	{
		
	}
	
}
