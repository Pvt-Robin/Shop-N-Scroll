package com.arms.shopnscroll.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.arms.shopnscroll.daoimpl.AdvertisementDAOImpl;
import com.arms.shopnscroll.model.Advertisement;

@Service
@Transactional
public class AdvertisementService 
{
	@Autowired
	private AdvertisementDAOImpl advertisementDAOImpl;
	
	public String fetchThreeAdsJSON()
	{
		return advertisementDAOImpl.fetchThreeAdsJSON();
	}
	
	public String fetchAllAdsJSON()
	{
		return advertisementDAOImpl.fetchAllAdsJSON();
	}
	
	public Advertisement fetchOneAd(int adId)
	{
		return advertisementDAOImpl.fetchOneAd(adId);
	}
	
	public void addAd(Advertisement advertisement)
	{
		advertisementDAOImpl.addAd(advertisement);
	}
	
	public int fetchNoOfEnabledAd()
	{
		
		return advertisementDAOImpl.fetchNoOfEnabledAd();
	}
	
}
