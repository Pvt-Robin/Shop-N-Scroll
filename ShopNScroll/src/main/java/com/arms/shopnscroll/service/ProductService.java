package com.arms.shopnscroll.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.arms.shopnscroll.daoimpl.ProductDAOImpl;
import com.arms.shopnscroll.model.Product;

@Service
@Transactional
public class ProductService 
{
	
@Autowired
	ProductDAOImpl productDAOImpl;
	
	public List<Product> fetchAllProduct()
	{
		return productDAOImpl.fetchAllProduct();
	}
	public Product fetchOneProduct(int productId)
	{
		return productDAOImpl.fetchOneProduct(productId);
	}
	
	public String fetchAllProductJSON()
	{
		return productDAOImpl.fetchAllProductJSON();
	}
	
	public String fetchAllProductJSONEnabled()
	{
		return productDAOImpl.fetchAllProductJSONEnabled();
	}
	
	public boolean addProduct(Product product)
	{	
		return productDAOImpl.addProduct(product);
	}
	public void removeProduct(int productId)
	{
		productDAOImpl.removeProduct(productId);
	}
	public void toggleProduct(int productId)
	{
		productDAOImpl.toggleProduct(productId);
	}
}
