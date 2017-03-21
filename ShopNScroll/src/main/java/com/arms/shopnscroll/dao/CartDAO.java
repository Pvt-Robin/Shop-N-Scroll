package com.arms.shopnscroll.dao;

import java.util.List;

import com.arms.shopnscroll.model.CartItems;

public interface CartDAO 
{
	public List<CartItems> fetchAllItems(int userId);
	public void addOneItem();
	public void addManyItems();
	public void removeItem(int product);
	public void checkOutItems(int[] productList);
}
