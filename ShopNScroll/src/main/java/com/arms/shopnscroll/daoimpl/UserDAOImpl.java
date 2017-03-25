package com.arms.shopnscroll.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.arms.shopnscroll.dao.UserDAO;
import com.arms.shopnscroll.model.BillingAddress;
import com.arms.shopnscroll.model.Cart;
import com.arms.shopnscroll.model.ShippingAddress;
import com.arms.shopnscroll.model.User;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Repository
public class UserDAOImpl implements UserDAO
{	
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public void addUser(User user) 
	{
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(user);
		
		Cart cart = new Cart();
		BillingAddress billingAddress = new BillingAddress();
		ShippingAddress shippingAddress = new ShippingAddress();
		
		cart.setCartId(user.getUserId());
		cart.setUserId(user.getUserId());
		
		
		billingAddress.setBillId(user.getUserId());
		billingAddress.setUserId(user.getUserId());
		
		shippingAddress.setShipId(user.getUserId());
		shippingAddress.setUserId(user.getUserId());
		
		session.saveOrUpdate(cart);
		session.saveOrUpdate(billingAddress);
		session.saveOrUpdate(shippingAddress);

		user.setBillId(user.getUserId());
		user.setShipId(user.getUserId());
		user.setCartId(user.getUserId());
		user.setEnabled(true);
		user.setRole("ROLE_USER");
		
		session.saveOrUpdate(user);
	}

	@Override
	public String fetchAllUser() 
	{
		List<User> userList = sessionFactory.getCurrentSession().createQuery("from User").getResultList();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		return gson.toJson(userList);
	}

	@Override
	public User fetchOneUser(int userId) 
	{
		List<User> userList = sessionFactory.getCurrentSession().createQuery("from User where userId="+userId).getResultList();
		return userList.get(0);
	}
	
	@Override
	public User fetchUserByUserName(String username) 
	{
		List<User> userList = sessionFactory.getCurrentSession().createQuery("from User where username='"+username+"'").getResultList();
		return userList.get(0);
	}
	
	@Override
	public void toggleUserStatus(int userId)
	{
		User user = fetchOneUser(userId);
		if(user.isEnabled())
		{
			user.setEnabled(false);
		}
		else
		{
			user.setEnabled(true);
		}
	}


}
