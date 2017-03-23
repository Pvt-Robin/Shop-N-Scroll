package com.arms.shopnscroll.dao;

import java.util.List;

import com.arms.shopnscroll.model.Advertisement;

public interface AdvertisementDAO 
{
	public List<Advertisement> fetchFiveAds();
	public Advertisement fetchOneAd(int adId);
	public void addAd(Advertisement advertisement);
	public void removeAd(int adId);
}
