package com.arms.shopnscroll.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.arms.shopnscroll.dao.CartDAO;
import com.arms.shopnscroll.model.CartItems;

@Repository
public class CartDAOImpl implements CartDAO
{

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public List<CartItems> fetchAllItems(int userId) 
	{
		List<CartItems> cartList = sessionFactory.getCurrentSession().createQuery("from CartItems where userId="+userId).getResultList();
		return cartList;
	}

	@Override
	public void addOneItem() 
	{
		
	}

	@Override
	public void addManyItems() 
	{
		
	}

	@Override
	public void removeItem(int product) 
	{
		
	}

	@Override
	public void checkOutItems(int[] productList) 
	{
		
	}

}
