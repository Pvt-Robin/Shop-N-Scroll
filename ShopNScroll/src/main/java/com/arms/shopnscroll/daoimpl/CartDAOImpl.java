package com.arms.shopnscroll.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.arms.shopnscroll.dao.CartDAO;
import com.arms.shopnscroll.model.CartItems;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Repository
public class CartDAOImpl implements CartDAO
{

	@Autowired
	SessionFactory sessionFactory;
	
	public String fetchAllItemsByUserIdJSON(int userId) 
	{
		List<CartItems> cartList = sessionFactory.getCurrentSession().createQuery("from CartItems where userId="+userId+" and flag = 'N'").getResultList();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		return gson.toJson(cartList);
	}
	
	public List<CartItems> fetchAllItemsByUserId(int userId) 
	{
		List<CartItems> cartList = sessionFactory.getCurrentSession().createQuery("from CartItems where userId="+userId+" and flag = 'N'").getResultList();
		return cartList;
	}
	
	public String fetchAllOrders(int userId) 
	{
		List<CartItems> cartList = sessionFactory.getCurrentSession().createQuery("from CartItems where userId="+userId+" and flag = 'Y'").getResultList();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		return gson.toJson(cartList);
	}
	
	public CartItems fetchOneItem(int cartItemsId) 
	{
		List<CartItems> cartList = sessionFactory.getCurrentSession().createQuery("from CartItems where cartItemsId="+cartItemsId).getResultList();
		CartItems cartItems = cartList.get(0);
		return cartItems;
	}

	public void addItem(CartItems cartItems) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(cartItems);
	}

	public void removeItem(int cartItemsId) 
	{
		CartItems thisCartItem = fetchOneItem(cartItemsId);
		sessionFactory.getCurrentSession().delete(thisCartItem);
	}

}
