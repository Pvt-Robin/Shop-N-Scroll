package com.arms.shopnscroll.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.arms.shopnscroll.dao.BrandDAO;
import com.arms.shopnscroll.model.Brand;

@Repository
public class BrandDAOImpl implements BrandDAO 
{
	@Autowired
	SessionFactory sessionFactory;
	
	public List<Brand> fetchAllBrand() 
	{
		List<Brand> brandList = sessionFactory.getCurrentSession().createQuery("from Brand").getResultList();
		return brandList;
	}

	public Brand fetchOneBrand(int brandId) {
		List <Brand> brandList = sessionFactory.getCurrentSession().createQuery("from Brand where brandId = "+brandId).getResultList();
		return brandList.get(0);
	}

	public void addBrand(Brand brand) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(brand);
	}

	public void removeBrand(int brandId) 
	{
		Brand brand = fetchOneBrand(brandId);
		sessionFactory.getCurrentSession().delete(brand);
	}

}
