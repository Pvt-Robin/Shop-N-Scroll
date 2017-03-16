package com.arms.shopnscroll.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.arms.shopnscroll.dao.UserDAO;
import com.arms.shopnscroll.model.Cart;
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
		cart.setCartId(user.getUserId());
		cart.setUserId(user.getUserId());
		
		user.setEnabled(true);
		
		session.saveOrUpdate(cart);
		session.saveOrUpdate(user);
	}

	@Override
	public String fetchAllUser() 
	{
		List<User> userList = sessionFactory.getCurrentSession().createQuery("from User").getResultList();
//		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		Gson gson  = new Gson();
		return gson.toJson(userList);
	}

	@Override
	public String fetchOneUser(int userId) 
	{
		List<User> userList = sessionFactory.getCurrentSession().createQuery("from User where userId="+userId).getResultList();
//		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		Gson gson  = new Gson();
		return gson.toJson(userList);
	}

}
