package com.arms.shopnscroll.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.arms.shopnscroll.dao.WishItemsDAO;
import com.arms.shopnscroll.model.WishItems;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Repository
public class WishItemsDAOImpl implements WishItemsDAO
{
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void makeWish(WishItems wish) 
	{
		List<WishItems> temp = sessionFactory.getCurrentSession().createQuery("from WishItems where productId="+wish.getProductId()+" and userId="+wish.getUserId()).getResultList();
		if(temp.isEmpty())
		{
			sessionFactory.getCurrentSession().saveOrUpdate(wish);
		}
	}
	
	@Override
	public void forgetWish(int wishId) 
	{
		sessionFactory.getCurrentSession().delete(recallWishById(wishId));
	}

	@Override
	public String knowWishes(int userId) 
	{
		List<WishItems> wishList = sessionFactory.getCurrentSession().createQuery("from WishItems where userId="+userId).getResultList();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		
		return gson.toJson(wishList);
	}
	
	@Override
	public WishItems recallWishById(int wishId) 
	{
		List<WishItems> temp = sessionFactory.getCurrentSession().createQuery("from WishItems where wishId="+wishId).getResultList();
		return temp.get(0);
	}
	
}
