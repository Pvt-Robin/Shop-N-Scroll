package com.arms.shopnscroll.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.arms.shopnscroll.daoimpl.CategoryDAOImpl;
import com.arms.shopnscroll.model.Category;

@Service
@Transactional
public class CategoryService 
{
	@Autowired
	CategoryDAOImpl categoryDAOImpl;
	
	public List<Category> fetchAllCategory()
	{
		return categoryDAOImpl.fetchAllCategory();
	}
	
	public Category fetchOneCategory(int categoryId)
	{
		return categoryDAOImpl.fetchOneCategory(categoryId);
	}
	
	public void addCategory(Category category)
	{
		categoryDAOImpl.addCategory(category);
	}
	
	public void removeCategory(int categoryId)
	{
		categoryDAOImpl.removeCategory(categoryId);
	}

}
