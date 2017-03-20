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
	
	@NotEmpty(message="Name Is Required")
	@Expose
	private String supplierName;
	
	@NotEmpty(message="Firm Name Required")
	@Expose
	private String supplierFirmName;
	
	@NotEmpty(message="Description Is Required")
	@Expose
	private String supplierDescription;
	
	@NotEmpty(message="Landmark Is Required")
	@Expose
	private String supplierLandmark;
	
	@NotEmpty(message="Street Is Required")
	@Expose
	private String supplierStreet;
	
	@NotEmpty(message="City Is Required")
	@Expose
	private String supplierCity;
	
	@NotEmpty(message="State Is Required")
	@Expose
	private String supplierState;
	
	@NotEmpty(message="Country Is Required")
	@Expose
	private String supplierCountry;
	
	@NotEmpty(message="Email Is Required")
	@Expose
	private String supplierEmail;
	
	@NotEmpty(message="Contact Is Required")
	@Expose
	private String supplierContact;
	
	@Expose
	private boolean enabled;
	
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
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public Set<Product> getProduct() {
		return product;
	}
	public void setProduct(Set<Product> product) {
		this.product = product;
	}

}
