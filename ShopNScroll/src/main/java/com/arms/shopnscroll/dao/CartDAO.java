package com.arms.shopnscroll.dao;

import java.util.List;

import com.arms.shopnscroll.model.CartItems;

public interface CartDAO 
{
	public String fetchAllItemsByUserIdJSON(int userId);
	public CartItems fetchOneItem(int cartItemsId); 
	public List<CartItems> fetchAllItemsByUserId(int userId);
	public String fetchAllOrders(int userId);
	
	public void addItem(CartItems cartItems);
	public void removeItem(int cartItemId);
}
