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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.arms.shopnscroll.model.Brand;
import com.arms.shopnscroll.service.BrandService;

@Controller
public class BrandController 
{
	@Autowired
	BrandService brandService;
	
	private String Data_Folder = "E:\\Workspaces\\ShopNScrollSecond\\ShopNScroll\\src\\main\\webapp\\resources\\data";
	
	@RequestMapping(value="/brand")
	public String getBrand(Model model)
	{
		model.addAttribute("brandList", brandService.fetchAllBrand());
		model.addAttribute("brand",new Brand());
		model.addAttribute("brandListJSON", brandService.fetchAllBrandJSON());

		model.addAttribute("btnLabel","Add");
		
		return "admin-brand";
	}
	
	@RequestMapping("/updatebrand-{brandId}")
	public String updateBrand(@PathVariable("brandId")int brandId, Model model)
	{
		model.addAttribute("brandList", brandService.fetchAllBrand());
		model.addAttribute("brand", brandService.fetchOneBrand(brandId));
		model.addAttribute("brandListJSON", brandService.fetchAllBrandJSON());

		model.addAttribute("btnLabel","Update");
		
		return "admin-brand";
	}
	
	@RequestMapping("/addbrand")
	public String addBrand(@Valid @ModelAttribute("brand")Brand brand,BindingResult result, @RequestParam("brandImage")MultipartFile productImage, Model model)
	{
		if(result.hasErrors())
		{
			model.addAttribute("brandList", brandService.fetchAllBrand());
			model.addAttribute("brandListJSON", brandService.fetchAllBrandJSON());
			
			model.addAttribute("btnLabel","Update");
			
			return "admin-brand";
		}
		
		brandService.addBrand(brand);
		
		if(!productImage.isEmpty()){
			try
			{
				byte[] bytes = productImage.getBytes();
				
				File directory = new File(Data_Folder + File.separator);
						if(!directory.exists())
						{
							directory.mkdirs();
						}
						
						File imageFile = new File(directory.getAbsolutePath() + File.separator + "BRND-" + brand.getBrandId() + ".jpg");
						BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(imageFile));
						stream.write(bytes);
						stream.close();
			}
			catch(Exception e)
			{
				e.printStackTrace();
				model.addAttribute("fmessage","Logo Upload Failed.try again");
			}
			model.addAttribute("filemessage","Logo Upload Successful");
		}
		else
		{
			model.addAttribute("filemessage","Logo is required");
		}
		
		return "redirect:/brand";
	}
	
	@RequestMapping("/removebrand-{brandId}")
	public String removeBrand(@PathVariable("brandId")int brandId)
	{
		try{
    		File file = new File(Data_Folder +  File.separator + "BRND-" + brandId +".jpg");
    		file.delete();
			}
			catch(Exception e)
			{
    		e.printStackTrace();
    		}
		
		brandService.removeBrand(brandId);
		return "redirect:/brand";
	}
	
}
