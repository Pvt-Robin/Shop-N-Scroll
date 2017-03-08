package com.arms.shopnscroll.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.validation.Valid;

import org.hibernate.validator.constraints.Length;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.arms.shopnscroll.model.Product;
import com.arms.shopnscroll.model.SubCategory;
import com.arms.shopnscroll.service.BrandService;
import com.arms.shopnscroll.service.CategoryService;
import com.arms.shopnscroll.service.ProductService;
import com.arms.shopnscroll.service.SubCategoryService;
import com.arms.shopnscroll.service.SupplierService;

@Controller
public class ProductController {
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
	
	private String Data_Folder = "E:\\Workspaces\\ShopNScrollSecond\\ShopNScroll\\src\\main\\webapp\\resources\\data";

	@RequestMapping("/product")
	public String getProduct(@ModelAttribute("product") Product product, Model model) {
		model.addAttribute("categoryList", categoryService.fetchAllCategory());
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategory());
		model.addAttribute("brandList", brandService.fetchAllBrand());
		model.addAttribute("supplierList", supplierService.fetchAllSupplier());
		model.addAttribute("productList", productService.fetchAllProduct());

		model.addAttribute("product", new Product());

		model.addAttribute("btnLabel", "Add");

		return "admin-product";
	}

	@RequestMapping("/updateproduct-{productId}")
	public String updateProduct(@PathVariable("productId") int productId,
			@ModelAttribute("product") SubCategory product, Model model) {
		model.addAttribute("categoryList", categoryService.fetchAllCategory());
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategory());
		model.addAttribute("brandList", brandService.fetchAllBrand());
		model.addAttribute("supplierList", supplierService.fetchAllSupplier());
		model.addAttribute("productList", productService.fetchAllProduct());

		model.addAttribute("product", productService.fetchOneProduct(productId));
		model.addAttribute("btnLabel", "Update");

		return "admin-product";
	}

	@RequestMapping("/addproduct")
	public String addProduct(@Valid @ModelAttribute("product") Product product,@RequestParam("productImage")MultipartFile productImage, BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("categoryList", categoryService.fetchAllCategory());
			model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategory());
			model.addAttribute("brandList", brandService.fetchAllBrand());
			model.addAttribute("supplierList", supplierService.fetchAllSupplier());
			model.addAttribute("productList", productService.fetchAllProduct());

			model.addAttribute("btnLabel", "Retry Add");

			return "admin-product";
		}
		
		productService.addProduct(product);
		
		if(!productImage.isEmpty()){
			try
			{
				byte[] bytes = productImage.getBytes();
				
				File directory = new File(Data_Folder + File.separator);
						if(!directory.exists())
						{
							directory.mkdirs();
						}
						
						File imageFile = new File(directory.getAbsolutePath() + File.separator + "productImage-" + product.getProductId() + ".jpg");
						BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(imageFile));
						stream.write(bytes);
						stream.close();
			}
			catch(Exception e)
			{
				e.printStackTrace();
				model.addAttribute("fmessage","Image Upload Failed.try again");
			}
			model.addAttribute("filemessage","Image Upload Successful");
		}
		else
		{
			model.addAttribute("filemessage","Image file is required");
		}
		
		return "redirect:/product";
	}

	@RequestMapping("/removeproduct-{productId}")
	public String removeProduct(@PathVariable("productId") int productId) {
				
		try{
    		File file = new File(Data_Folder +  File.separator + "productImage-" + productId +".jpg");
    		file.delete();
			}
			catch(Exception e)
			{
    		e.printStackTrace();
    		}
		
		
		return "redirect:/product";
	}
}
