package com.arms.shopnscroll.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.constraints.Pattern;

import com.google.gson.annotations.Expose;

@Entity
public class BillingAddress 
{
	@Id
	@Expose
	private int userId;
	
	@Expose
	private String bName;
	
	@Expose
	private String bPrefix;
	
	@Expose
	private String bLandmark;
	
	@Expose
	private String bStreet;
	
	@Expose
	@Pattern(regexp="^[a-zA-Z_]*$",message="Cannot Have Numbers And Symbols")
	private String bCity;
	
	@Expose
	@Pattern(regexp="^[a-zA-Z_]*$",message="Cannot Have Numbers And Symbols")
	private String bState;
	
	@Expose
	@Pattern(regexp="^[a-zA-Z_]*$",message="Cannot Have Numbers And Symbols")
	private String bCountry;
	
	@Expose
//	@Pattern(regexp="(^$|[0-9]{10})",message="Should Be A 6 Digit Number")
	private int bPIN;
	
	@OneToOne
	@JoinColumn(name="UserId", nullable=false , updatable=false , insertable=false )
	private User user;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getbPrefix() {
		return bPrefix;
	}
	public void setbPrefix(String bPrefix) {
		this.bPrefix = bPrefix;
	}
	public String getbStreet() {
		return bStreet;
	}
	public void setbStreet(String bStreet) {
		this.bStreet = bStreet;
	}
	public String getbCity() {
		return bCity;
	}
	public void setbCity(String bCity) {
		this.bCity = bCity;
	}
	public String getbState() {
		return bState;
	}
	public void setbState(String bState) {
		this.bState = bState;
	}
	public String getbCountry() {
		return bCountry;
	}
	public void setbCountry(String bCountry) {
		this.bCountry = bCountry;
	}
	public int getbPIN() {
		return bPIN;
	}
	public void setbPIN(int bPIN) {
		this.bPIN = bPIN;
	}
	public String getbLandmark() {
		return bLandmark;
	}
	public void setbLandmark(String bLandmark) {
		this.bLandmark = bLandmark;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
