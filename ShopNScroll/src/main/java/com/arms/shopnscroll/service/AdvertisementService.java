package com.arms.shopnscroll.service;

import java.util.List;

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
	
	public List<Advertisement> fetchFiveAds()
	{
		return advertisementDAOImpl.fetchFiveAds();
	}
	
	public Advertisement fetchOneAd(int adId)
	{
		return advertisementDAOImpl.fetchOneAd(adId);
	}
	
	public void addAd(Advertisement advertisement)
	{
		advertisementDAOImpl.addAd(advertisement);
	}
	
	public void removeAd(int adId)
	{
		
		advertisementDAOImpl.removeAd(adId);
	}
	
}
