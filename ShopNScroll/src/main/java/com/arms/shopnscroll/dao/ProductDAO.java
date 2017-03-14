package com.arms.shopnscroll.dao;

import java.util.List;

import com.arms.shopnscroll.model.Product;

public interface ProductDAO {
	public List<Product> fetchAllProduct();
	public Product fetchOneProduct(int productId);
	public String fetchAllProductJSON();
	
	public void addProduct(Product product);
	public void removeProduct(int productId);
}
