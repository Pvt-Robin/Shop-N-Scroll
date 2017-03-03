package com.arms.shopnscroll.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.arms.shopnscroll.dao.ProductDAO;
import com.arms.shopnscroll.model.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public List<Product> fetchAllProduct() {
		List<Product> productList = sessionFactory.getCurrentSession().createQuery("from Product").getResultList();
		return productList;
	}

	public Product fetchOneProduct(int productId) {
		List <Product> productList = sessionFactory.getCurrentSession().createQuery("from Product where productId = "+productId).getResultList();
		return productList.get(0);
	}

	public void addProduct(Product product) {
		sessionFactory.getCurrentSession().saveOrUpdate(product);
	}

	public void removeProduct(int productId) {
		
		sessionFactory.getCurrentSession().delete(fetchOneProduct(productId));
	}

}
