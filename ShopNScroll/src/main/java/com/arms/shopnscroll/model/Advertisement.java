package com.arms.shopnscroll.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class Advertisement 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int adId;
	
	private String adTitle;
	private String adAllureTerm;
	private String adLink;
	private int adTurns;
	
	@Transient
	private MultipartFile adBanner;
	
	public int getAdId() {
		return adId;
	}
	public void setAdId(int adId) {
		this.adId = adId;
	}
	public String getAdTitle() {
		return adTitle;
	}
	public void setAdTitle(String adTitle) {
		this.adTitle = adTitle;
	}
	public String getAdAllureTerm() {
		return adAllureTerm;
	}
	public void setAdAllureTerm(String adAllureTerm) {
		this.adAllureTerm = adAllureTerm;
	}
	public String getAdLink() {
		return adLink;
	}
	public void setAdLink(String adLink) {
		this.adLink = adLink;
	}
	public int getAdTurns() {
		return adTurns;
	}
	public void setAdTurns(int adTurns) {
		this.adTurns = adTurns;
	}
	public MultipartFile getAdBanner() {
		return adBanner;
	}
	public void setAdBanner(MultipartFile adBanner) {
		this.adBanner = adBanner;
	}

}
