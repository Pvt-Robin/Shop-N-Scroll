package com.arms.shopnscroll.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.arms.shopnscroll.daoimpl.BrandDAOImpl;
import com.arms.shopnscroll.model.Brand;

@Service
@Transactional
public class BrandService 
{
	@Autowired
	BrandDAOImpl brandDAOImpl;
	
	public List<Brand> fetchAllBrand()
	{
		return brandDAOImpl.fetchAllBrand();
	}
	
	public Brand fetchOneBrand(int brandId)
	{
		return brandDAOImpl.fetchOneBrand(brandId);
	}
	
	public void addBrand(Brand brand)
	{
		brandDAOImpl.addBrand(brand);
	}
	
	public void removeBrand(int brandId)
	{
		brandDAOImpl.removeBrand(brandId);
	}
}
