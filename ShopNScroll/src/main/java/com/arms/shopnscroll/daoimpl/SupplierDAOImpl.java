package com.arms.shopnscroll.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.arms.shopnscroll.dao.SupplierDAO;
import com.arms.shopnscroll.model.Supplier;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Repository
public class SupplierDAOImpl implements SupplierDAO
{
	@Autowired
	SessionFactory sessionFactory;

	public List<Supplier> fetchAllSupplier() 
	{
		List<Supplier> supplierList = sessionFactory.getCurrentSession().createQuery("from Supplier where enabled = 'true'").getResultList();
		return supplierList;
	}

	public String fetchAllSupplierJSON() 
	{
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		List<Supplier> supplierList = sessionFactory.getCurrentSession().createQuery("from Supplier").getResultList();
		return gson.toJson(supplierList);
	}
	
	public Supplier fetchOneSupplier(int supplierId) 
	{
		List<Supplier> supplierList = sessionFactory.getCurrentSession().createQuery("from Supplier where supplierId = "+supplierId).getResultList();
		return supplierList.get(0);
	}

	public void addSupplier(Supplier supplier) 
	{
		supplier.setEnabled(true);
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
	}

	public void removeSupplier(int supplierId) 
	{
		sessionFactory.getCurrentSession().delete(fetchOneSupplier(supplierId));

	}

	public void toggleSupplier(int supplierId) 
	{
		Supplier supplier = fetchOneSupplier(supplierId);
		if(supplier.isEnabled())
		{
			supplier.setEnabled(false);
		}
		else
		{
			supplier.setEnabled(true);
		}
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
	}

}
