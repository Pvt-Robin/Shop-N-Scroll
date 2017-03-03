package com.arms.shopnscroll.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.arms.shopnscroll.dao.SupplierDAO;
import com.arms.shopnscroll.model.Supplier;

@Repository
public class SupplierDAOImpl implements SupplierDAO
{
	@Autowired
	SessionFactory sessionFactory;

	public List<Supplier> fetchAllSupplier() {
		List<Supplier> supplierList = sessionFactory.getCurrentSession().createQuery("from Supplier").getResultList();
		return supplierList;
	}

	public Supplier fetchOneCategory(int supplierId) {
		List<Supplier> supplierList = sessionFactory.getCurrentSession().createQuery("from Supplier where supplierId = "+supplierId).getResultList();
		return supplierList.get(0);
	}

	public void addSupplier(Supplier supplier) {
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
	}

	public void removeSupplier(int supplierId) {
		sessionFactory.getCurrentSession().delete(fetchOneCategory(supplierId));

	}

}
