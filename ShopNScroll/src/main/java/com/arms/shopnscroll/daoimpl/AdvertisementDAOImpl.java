package com.arms.shopnscroll.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.arms.shopnscroll.dao.AdvertisementDAO;
import com.arms.shopnscroll.model.Advertisement;

@Repository
public class AdvertisementDAOImpl implements AdvertisementDAO
{
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public List<Advertisement> fetchFiveAds() 
	{
		List<Advertisement> adList = sessionFactory.getCurrentSession().createQuery("select min(adTurns) from Advertisement ").getResultList();
		return adList.subList(0, 4);
	}

	@Override
	public Advertisement fetchOneAd(int adId) 
	{
		List<Advertisement> adList = sessionFactory.getCurrentSession().createQuery("from Advertisement where adId="+adId).getResultList();
		return adList.get(0);
	}

	@Override
	public void addAd(Advertisement advertisement) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(advertisement);
	}

	@Override
	public void removeAd(int adId) 
	{
		Advertisement thisAd = fetchOneAd(adId);
		sessionFactory.getCurrentSession().delete(thisAd);
	}
	
	
}
