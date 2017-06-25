package com.arms.shopnscroll.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.annotations.Expose;

@Entity
public class Advertisement 
{
	@Id
	@Expose
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int adId;
	
	@Expose
	@NotEmpty
	private String adTitle;
	
	@Expose
	@NotEmpty
	private String adCaption;
	
	@Expose
//	@NotEmpty
	private String adLink;
	
	@Expose
	private int adTurns;
	
	@Expose
	private boolean enabled;
	
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
	public String getAdCaption() {
		return adCaption;
	}
	public void setAdCaption(String adCaption) {
		this.adCaption = adCaption;
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
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	
}
