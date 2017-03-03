package com.arms.shopnscroll.dao;

import java.util.List;

import com.arms.shopnscroll.model.Brand;

public interface BrandDAO 
{
	public List<Brand> fetchAllBrand();
	public Brand fetchOneBrand(int brandId);
	
	public void addBrand(Brand brand);
	public void removeBrand(int brandId);

}
