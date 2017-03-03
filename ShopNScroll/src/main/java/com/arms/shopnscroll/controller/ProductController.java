package com.arms.shopnscroll.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.arms.shopnscroll.model.Product;
import com.arms.shopnscroll.model.SubCategory;
import com.arms.shopnscroll.service.BrandService;
import com.arms.shopnscroll.service.CategoryService;
import com.arms.shopnscroll.service.ProductService;
import com.arms.shopnscroll.service.SubCategoryService;
import com.arms.shopnscroll.service.SupplierService;

@Controller
public class ProductController 
{
	@Autowired
	ProductService productService;
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	SubCategoryService subCategoryService;
	
	@Autowired
	BrandService brandService;
	
	@Autowired
	SupplierService supplierService;
	
	@RequestMapping("/product")
	public String getProduct(@ModelAttribute("product")Product product, Model model)
	{
		model.addAttribute("categoryList", categoryService.fetchAllCategory());
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategory());
		model.addAttribute("brandList", brandService.fetchAllBrand());
		model.addAttribute("supplierList", supplierService.fetchAllSupplier());
		model.addAttribute("productList", productService.fetchAllProduct());
		
		model.addAttribute("product", new Product());
		
		model.addAttribute("btnLabel","Add");

		return "admin-product";
	}
	
	@RequestMapping("/updateproduct-{productId}")
	public String updateProduct(@PathVariable("productId")int productId,@ModelAttribute("product")SubCategory product, Model model)
	{
		model.addAttribute("categoryList", categoryService.fetchAllCategory());
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategory());
		model.addAttribute("brandList", brandService.fetchAllBrand());
		model.addAttribute("supplierList", supplierService.fetchAllSupplier());
		model.addAttribute("productList", productService.fetchAllProduct());
		
		model.addAttribute("product", productService.fetchOneProduct(productId));
		model.addAttribute("btnLabel","Update");

		return "admin-product";
	}
	
	@RequestMapping("/addproduct")
	public String addProduct(@ModelAttribute("product")Product product)
	{
		productService.addProduct(product);
		return "redirect:/product";
	}
	
	@RequestMapping("/removeproduct-{productId}")
	public String removeProduct(@PathVariable("productId")int productId)
	{
		productService.removeProduct(productId);
		return "redirect:/product";
	}
}
