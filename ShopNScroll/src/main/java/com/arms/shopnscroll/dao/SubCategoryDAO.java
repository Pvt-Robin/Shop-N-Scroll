package com.arms.shopnscroll.dao;

import java.util.List;

import com.arms.shopnscroll.model.SubCategory;

public interface SubCategoryDAO 
{
	public List<SubCategory> fetchAllSubCategory();
	public SubCategory fetchOneSubCategory(int subCategoryId);
	
	public void addSubCategory(SubCategory subCategory);
	public void removeSubCategory(int subCategoryId);
	
}
