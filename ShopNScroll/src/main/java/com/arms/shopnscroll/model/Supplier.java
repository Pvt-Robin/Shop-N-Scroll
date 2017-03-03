package com.arms.shopnscroll.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Supplier 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int supplierId;
	
	private String supplierName;
	private String supplierFirmName;
	private String supplierDescription;
	private String supplierLandmark;
	private String supplierStreet;
	private String supplierCity;
	private String supplierState;
	private String supplierCountry;
	private String supplierEmail;
	private String supplierContact;
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
