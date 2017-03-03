package com.arms.shopnscroll.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.arms.shopnscroll.daoimpl.SubCategoryDAOImpl;
import com.arms.shopnscroll.model.SubCategory;

@Service
@Transactional
public class SubCategoryService 
{
	@Autowired
	SubCategoryDAOImpl subCategoryDAOImpl;
	
	public List<SubCategory> fetchAllSubCategory()
	{
		return subCategoryDAOImpl.fetchAllSubCategory();
	}
	
	public SubCategory fetchOneSubCategory(int subCategoryId)
	{
		return subCategoryDAOImpl.fetchOneSubCategory(subCategoryId);
	}
	
	public void addSubCategory(SubCategory subCategory)
	{
		subCategoryDAOImpl.addSubCategory(subCategory);
	}
	
	public void removeSubCategory(int subCategoryId)
	{
		subCategoryDAOImpl.removeSubCategory(subCategoryId);
	}

}

