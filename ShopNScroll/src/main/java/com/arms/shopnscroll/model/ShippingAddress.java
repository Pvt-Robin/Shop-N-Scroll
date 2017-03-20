package com.arms.shopnscroll.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.constraints.Pattern;

import com.google.gson.annotations.Expose;

@Entity
public class ShippingAddress 
{
	@Id
	@Expose
	private int userId;
	
	@Expose
	private String sName;
	
	@Expose
	private String sPrefix;
	
	@Expose
	private String sLandmark;
	
	@Expose
	private String sStreet;
	
	@Expose
	@Pattern(regexp="^[a-zA-Z_]*$",message="Cannot Have Numbers And Symbols")
	private String sCity;
	
	@Expose
	@Pattern(regexp="^[a-zA-Z_]*$",message="Cannot Have Numbers And Symbols")
	private String sState;
	
	@Expose
	@Pattern(regexp="^[a-zA-Z_]*$",message="Cannot Have Numbers And Symbols")
	private String sCountry;
	
	@Expose
//	@Pattern(regexp="(^$|[0-9]{10})",message="Should Be A 6 Digit Number")
	private int sPIN;
	
	@OneToOne
	@JoinColumn(name="userId", nullable=false , updatable=false , insertable=false )
	private User user;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getsPrefix() {
		return sPrefix;
	}
	public void setsPrefix(String sPrefix) {
		this.sPrefix = sPrefix;
	}
	public String getsStreet() {
		return sStreet;
	}
	public void setsStreet(String sStreet) {
		this.sStreet = sStreet;
	}
	public String getsCity() {
		return sCity;
	}
	public void setsCity(String sCity) {
		this.sCity = sCity;
	}
	public String getsState() {
		return sState;
	}
	public void setsState(String sState) {
		this.sState = sState;
	}
	public String getsCountry() {
		return sCountry;
	}
	public void setsCountry(String sCountry) {
		this.sCountry = sCountry;
	}
	public int getsPIN() {
		return sPIN;
	}
	public void setsPIN(int sPIN) {
		this.sPIN = sPIN;
	}
	public String getsLandmark() {
		return sLandmark;
	}
	public void setsLandmark(String sLandmark) {
		this.sLandmark = sLandmark;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	
	
}
