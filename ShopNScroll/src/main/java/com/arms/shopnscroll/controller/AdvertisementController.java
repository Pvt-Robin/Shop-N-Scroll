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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.arms.shopnscroll.model.Advertisement;
import com.arms.shopnscroll.service.AdvertisementService;

@Controller
public class AdvertisementController 
{
	
	private String Data_Folder = "E:\\Workspaces\\ShopNScrollSecond\\ShopNScroll\\src\\main\\webapp\\resources\\data";
	
	@Autowired
	AdvertisementService advertisementService;

	@RequestMapping(value = { "/ads" })
	public String getAds(Model model) 
	{
		model.addAttribute("adListAll", advertisementService.fetchAllAdsJSON());
		model.addAttribute("advertisement", new Advertisement());

		return "admin-ads";
	}

	@RequestMapping("/addad")
	public String addAd(@Valid @ModelAttribute("advertisement")Advertisement advertisement,BindingResult result, @RequestParam("adBanner")MultipartFile productImage, Model model , RedirectAttributes redirectAttributes)
		{
			if(result.hasErrors())
			{
				model.addAttribute("adListAll", advertisementService.fetchAllAdsJSON());
				model.addAttribute("btnLabel","Update");
				
				return "admin-brand";
			}
			
			advertisement.setEnabled(true);
			advertisementService.addAd(advertisement);
			
			if(!productImage.isEmpty()){
				try
				{
					byte[] bytes = productImage.getBytes();
					
					File directory = new File(Data_Folder + File.separator);
							if(!directory.exists())
							{
								directory.mkdirs();
							}
							
							File imageFile = new File(directory.getAbsolutePath() + File.separator + "AD-" + advertisement.getAdId() + ".jpg");
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
			
			return "redirect:/ads";
		}

 @RequestMapping(value={"/updatead-{adId}"})
 public String updateAds(@PathVariable("adId")int adId, Model model)
 {
		model.addAttribute("adListAll", advertisementService.fetchAllAdsJSON());
	 	model.addAttribute("advertisement", advertisementService.fetchOneAd(adId));
		model.addAttribute("btnLabel","Update");
	 
		return "admin-ads";
 }

 @RequestMapping(value={"/togglestatus-{adId}"})
 public String disableAds(@PathVariable("adId")int adId, Model model, RedirectAttributes redirectAttributes)
 {
	 int noOfEnabled = advertisementService.fetchNoOfEnabledAd();
	 Advertisement thisad = advertisementService.fetchOneAd(adId);
	 if(thisad.isEnabled())
	 {
		 if(noOfEnabled > 4)
		 {
		 thisad.setEnabled(false);
		 }
	 }
	 else
	 {
		 thisad.setEnabled(true);
	 }
	 advertisementService.addAd(thisad);
	 
	 return "redirect:/ads";
 }
 
}
