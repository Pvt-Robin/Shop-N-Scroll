package com.arms.shopnscroll.dao;

import com.arms.shopnscroll.model.CartItems;

public interface CartDAO 
{
	public String fetchAllItemsByUserIdJSON(int userId);
	public CartItems fetchOneItem(int cartItemsId); 
	
	public String fetchAllOrders(int userId);
	
	public void addItem(CartItems cartItems);
	public void removeItem(int cartItemId);
}
