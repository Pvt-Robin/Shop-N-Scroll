package com.arms.shopnscroll.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.arms.shopnscroll.model.Product;
import com.arms.shopnscroll.model.SubCategory;
import com.arms.shopnscroll.service.BrandService;
import com.arms.shopnscroll.service.CategoryService;
import com.arms.shopnscroll.service.ProductService;
import com.arms.shopnscroll.service.SubCategoryService;
import com.arms.shopnscroll.service.SupplierService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

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

	@RequestMapping(value = "/product" , method = RequestMethod.GET)
	public String getProduct(@ModelAttribute("product") Product product, Model model) {
		model.addAttribute("categoryList", categoryService.fetchAllCategory());
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategory());
		model.addAttribute("brandList", brandService.fetchAllBrand());
		model.addAttribute("supplierList", supplierService.fetchAllSupplier());
		model.addAttribute("productList", productService.fetchAllProduct());
		model.addAttribute("productListJSON", productService.fetchAllProductJSON());

		model.addAttribute("product", new Product());

		model.addAttribute("btnLabel", "Add");

		return "admin-product";
	}

	@RequestMapping(value="/updateproduct-{productId}")
	public String updateProduct(@PathVariable("productId") int productId,@ModelAttribute("product") SubCategory product, Model model) {
		model.addAttribute("categoryList", categoryService.fetchAllCategory());
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategory());
		model.addAttribute("brandList", brandService.fetchAllBrand());
		model.addAttribute("supplierList", supplierService.fetchAllSupplier());
		model.addAttribute("productList", productService.fetchAllProduct());
		model.addAttribute("productListJSON", productService.fetchAllProductJSON());

		model.addAttribute("product", productService.fetchOneProduct(productId));
		model.addAttribute("btnLabel", "Update");

		return "admin-product";
	}

	@RequestMapping(value = "/addproduct", method = RequestMethod.POST )
	public String addProduct(@Valid @ModelAttribute("product") Product product,BindingResult result, @RequestParam("productImage")MultipartFile productImage,  Model model , RedirectAttributes redirectAttributes)
	{

		if(result.hasErrors()) 
		{
			model.addAttribute("categoryList", categoryService.fetchAllCategory());
			model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategory());
			model.addAttribute("brandList", brandService.fetchAllBrand());
			model.addAttribute("supplierList", supplierService.fetchAllSupplier());
			model.addAttribute("productList", productService.fetchAllProduct());
			model.addAttribute("productListJSON", productService.fetchAllProductJSON());
			
			System.out.println("Result has error");
			
			model.addAttribute("btnLabel", "Update");

			return "admin-product";
		}
		
		float rate = product.getPrice();
		int discount = product.getDiscount();
		if(discount <= 0)
		{
			discount = 1;
		}
		float amount = rate-(rate*discount/100);
		product.setProductAmount(amount);
		
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
						
						File imageFile = new File(directory.getAbsolutePath() + File.separator + "PRDT-" + product.getProductId() + ".jpg");
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
	public String removeProduct(@PathVariable("productId") int productId , RedirectAttributes redirectAttributes) {
				
		productService.removeProduct(productId);
		
		try{
    		File file = new File(Data_Folder +  File.separator + "PRDT-" + productId +".jpg");
    		file.delete();
			}
			catch(Exception e)
			{
    		e.printStackTrace();
    		}
		
		return "redirect:/product";
	}
	
	@RequestMapping("/viewproduct-{productId}")
	public String viewOneProductJSON(@PathVariable("productId") int productId, Model model)
	{
		Product product = productService.fetchOneProduct(productId);
		
		int counterPlus = product.getViewCount()+1;
		product.setViewCount(counterPlus);
		
		productService.addProduct(product);
		
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		model.addAttribute("viewProductJSON", gson.toJson(product));
		
		return "main-viewproduct";
	}
	
	@RequestMapping(value = "/productdisplay")
	public String getProductDisplay(Model model) 
	{
		return "main-productdisplay";
	}
	
	@RequestMapping(value = "/toggleproduct-{productId}")
	public String toggleDisabled(@PathVariable("productId") int productId , RedirectAttributes redirectAttributes)
	{
		productService.toggleProduct(productId);		
		return "redirect:/product";
	}

}
