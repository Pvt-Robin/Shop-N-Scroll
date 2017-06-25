package com.arms.shopnscroll.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.arms.shopnscroll.dao.AdvertisementDAO;
import com.arms.shopnscroll.model.Advertisement;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Repository
public class AdvertisementDAOImpl implements AdvertisementDAO
{
	@Autowired
	SessionFactory sessionFactory;

	public String fetchThreeAdsJSON() 
	{
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		List<Advertisement> adList = sessionFactory.getCurrentSession().createQuery("from Advertisement where enabled = true order by adTurns").getResultList().subList(0, 4);
		for(Advertisement temp:adList)
		{
			temp.setAdTurns(temp.getAdTurns() + 1);
			addAd(temp);
		}
		return gson.toJson(adList);
	}
	
	public String fetchAllAdsJSON() 
	{
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		List<Advertisement> adList = sessionFactory.getCurrentSession().createQuery("from Advertisement").getResultList();
		return gson.toJson(adList);
	}

	public Advertisement fetchOneAd(int adId) 
	{
		List<Advertisement> adList = sessionFactory.getCurrentSession().createQuery("from Advertisement where adId="+adId).getResultList();
		return adList.get(0);
	}

	public void addAd(Advertisement advertisement) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(advertisement);
	}

	public int fetchNoOfEnabledAd()
	{
		return sessionFactory.getCurrentSession().createQuery("from Advertisement where enabled = true").getResultList().size();
	}
	
	
}
