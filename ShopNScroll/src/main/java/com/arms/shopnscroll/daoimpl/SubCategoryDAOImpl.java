package com.arms.shopnscroll.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.arms.shopnscroll.dao.SubCategoryDAO;
import com.arms.shopnscroll.model.SubCategory;

@Repository
public class SubCategoryDAOImpl implements SubCategoryDAO
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<SubCategory> fetchAllSubCategory() {
		List<SubCategory> catList = sessionFactory.getCurrentSession().createQuery("from SubCategory").getResultList();
		return catList;
	}

	public SubCategory fetchOneSubCategory(int subCategoryId) {
		List<SubCategory> catList = sessionFactory.getCurrentSession().createQuery("from SubCategory where subCategoryId = "+subCategoryId).getResultList();
		return catList.get(0);
	}
	
	public void addSubCategory(SubCategory subCategory) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(subCategory);
	}

	public void removeSubCategory(int subCategoryId) 
	{
		SubCategory subCategory = fetchOneSubCategory(subCategoryId);
		sessionFactory.getCurrentSession().delete(subCategory);
	}

}
