package com.arms.shopnscroll.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Supplier 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int supplierId;
	
	@NotEmpty(message="Name is required")
	private String supplierName;
	@NotEmpty(message="Firm Name required")
	private String supplierFirmName;
	@NotEmpty(message="Description is required")
	private String supplierDescription;
	@NotEmpty(message="Landmark is required")
	private String supplierLandmark;
	@NotEmpty(message="Street is required")
	private String supplierStreet;
	@NotEmpty(message="City is required")
	private String supplierCity;
	@NotEmpty(message="State is required")
	private String supplierState;
	@NotEmpty(message="Country is required")
	private String supplierCountry;
	@NotEmpty(message="Email is required")
	private String supplierEmail;
	@NotEmpty(message="Contace is required")
	private String supplierContact;
	@NotEmpty(message="Active Status is required")
	private String supplierDisabled;
	
	public int getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	public String getSupplierFirmName() {
		return supplierFirmName;
	}
	public void setSupplierFirmName(String supplierFirmName) {
		this.supplierFirmName = supplierFirmName;
	}
	public String getSupplierDescription() {
		return supplierDescription;
	}
	public void setSupplierDescription(String supplierDescription) {
		this.supplierDescription = supplierDescription;
	}
	public String getSupplierLandmark() {
		return supplierLandmark;
	}
	public void setSupplierLandmark(String supplierLandmark) {
		this.supplierLandmark = supplierLandmark;
	}
	public String getSupplierStreet() {
		return supplierStreet;
	}
	public void setSupplierStreet(String supplierStreet) {
		this.supplierStreet = supplierStreet;
	}
	public String getSupplierCity() {
		return supplierCity;
	}
	public void setSupplierCity(String supplierCity) {
		this.supplierCity = supplierCity;
	}
	public String getSupplierState() {
		return supplierState;
	}
	public void setSupplierState(String supplierState) {
		this.supplierState = supplierState;
	}
	public String getSupplierCountry() {
		return supplierCountry;
	}
	public void setSupplierCountry(String supplierCountry) {
		this.supplierCountry = supplierCountry;
	}
	public String getSupplierEmail() {
		return supplierEmail;
	}
	public void setSupplierEmail(String supplierEmail) {
		this.supplierEmail = supplierEmail;
	}
	public String getSupplierContact() {
		return supplierContact;
	}
	public void setSupplierContact(String supplierContact) {
		this.supplierContact = supplierContact;
	}
	public String getSupplierDisabled() {
		return supplierDisabled;
	}
	public void setSupplierDisabled(String supplierDisabled) {
		this.supplierDisabled = supplierDisabled;
	}
	
	
}
