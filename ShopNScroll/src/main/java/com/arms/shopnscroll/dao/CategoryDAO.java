package com.arms.shopnscroll.dao;

import java.util.List;

import com.arms.shopnscroll.model.Category;

public interface CategoryDAO 
{

public List<Category> fetchAllCategory();
public String fetchAllCategoryJSON();
public Category fetchOneCategory(int categoryId); 
	
public void addCategory(Category category);
public void removeCategory(int categoryId);

}
