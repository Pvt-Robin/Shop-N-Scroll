package com.arms.shopnscroll.dao;

import java.util.List;

import com.arms.shopnscroll.model.Supplier;

public interface SupplierDAO
{
public List<Supplier> fetchAllSupplier();
public Supplier fetchOneCategory(int supplierId);

public void addSupplier(Supplier supplier);
public void removeSupplier(int supplierId);
}
