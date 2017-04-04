package com.arms.shopnscroll.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.arms.shopnscroll.dao.ProductDAO;
import com.arms.shopnscroll.model.Product;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Repository
public class ProductDAOImpl implements ProductDAO
{
	
	@Autowired
	SessionFactory sessionFactory;
	
	public List<Product> fetchAllProduct() 
	{
		return sessionFactory.getCurrentSession().createQuery("from Product").getResultList();
	}

	public String fetchAllProductJSON() 
	{
		List<Product> productList = sessionFactory.getCurrentSession().createQuery("from Product").getResultList();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String list = gson.toJson(productList);
		return list;
	}
	
	public Product fetchOneProduct(int productId) 
	{
		List <Product> productList = sessionFactory.getCurrentSession().createQuery("from Product where productId = "+productId).getResultList();
		return productList.get(0);
	}

	public boolean addProduct(Product product)
	{

		product.setEnabled(true);
		try
		{
			sessionFactory.getCurrentSession().saveOrUpdate(product);
		}
		catch (Exception e) 
		{

			e.printStackTrace();
			return false;
		}
		return true;

	}

	public void removeProduct(int productId) 
	{
		
		sessionFactory.getCurrentSession().delete(fetchOneProduct(productId));
	}

	@Override
	public void toggleProduct(int productId) 
	{
		Product product = fetchOneProduct(productId);
		if(product.isEnabled())
		{
			product.setEnabled(false);
		}
		else
		{
			product.setEnabled(true);
		}
	}

}
