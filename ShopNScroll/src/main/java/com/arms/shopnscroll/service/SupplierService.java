package com.arms.shopnscroll.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.arms.shopnscroll.daoimpl.SupplierDAOImpl;
import com.arms.shopnscroll.model.Supplier;

@Service
@Transactional
public class SupplierService 
{
	@Autowired
	SupplierDAOImpl supplierDAOImpl;
	
	public List<Supplier> fetchAllSupplier()
	{
		return supplierDAOImpl.fetchAllSupplier();
	}
	
	public Supplier fetchOneCategory(int supplierId)
	{
		return supplierDAOImpl.fetchOneCategory(supplierId);
	}

	public void addSupplier(Supplier supplier)
	{
		supplierDAOImpl.addSupplier(supplier);
	}
	
	public void removeSupplier(int supplierId)
	{
		supplierDAOImpl.removeSupplier(supplierId);
	}
	
}
