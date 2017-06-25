package com.arms.shopnscroll.dao;

import com.arms.shopnscroll.model.Advertisement;

public interface AdvertisementDAO 
{
	public String fetchThreeAdsJSON();
	public String fetchAllAdsJSON();
	public Advertisement fetchOneAd(int adId);
	public void addAd(Advertisement advertisement);
	public int fetchNoOfEnabledAd();
}
