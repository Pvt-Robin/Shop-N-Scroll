package com.arms.shopnscroll.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.validator.constraints.NotEmpty;

import com.google.gson.annotations.Expose;

@Entity
public class Supplier 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Expose
	private int supplierId;
	
	@NotEmpty(message="Name is required")
	@Expose
	private String supplierName;
	
	@NotEmpty(message="Firm Name required")
	@Expose
	private String supplierFirmName;
	
	@NotEmpty(message="Description is required")
	@Expose
	private String supplierDescription;
	
	@NotEmpty(message="Landmark is required")
	@Expose
	private String supplierLandmark;
	
	@NotEmpty(message="Street is required")
	@Expose
	private String supplierStreet;
	
	@NotEmpty(message="City is required")
	@Expose
	private String supplierCity;
	
	@NotEmpty(message="State is required")
	@Expose
	private String supplierState;
	
	@NotEmpty(message="Country is required")
	@Expose
	private String supplierCountry;
	
	@NotEmpty(message="Email is required")
	@Expose
	private String supplierEmail;
	
	@NotEmpty(message="Contact is required")
	@Expose
	private String supplierContact;
	
	@NotEmpty(message="Active Status is required")
	@Expose
	private String supplierDisabled;
	
	@OneToMany(mappedBy="supplier", fetch=FetchType.EAGER)
	Set<Product> product;
	
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
