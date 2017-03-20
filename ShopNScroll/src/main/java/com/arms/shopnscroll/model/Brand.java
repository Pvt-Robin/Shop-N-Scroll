package com.arms.shopnscroll.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.annotations.Expose;

@Entity
public class Brand 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Expose
	private int brandId;
	
	@NotEmpty(message="Name is required")
	@Expose
	private String brandName;
	
	@NotEmpty(message="Description is Required")
	@Expose
	private String brandDescription;
	
	@Expose
	private String brandSite;
	
	@Transient
	@Expose
	private MultipartFile brandImage;
	
	@OneToMany(mappedBy="brand", fetch=FetchType.EAGER)
	Set<Product> product;
	
	public Set<Product> getProduct() {
		return product;
	}
	public void setProduct(Set<Product> product) {
		this.product = product;
	}
	public String getBrandSite() {
		return brandSite;
	}
	public void setBrandSite(String brandSite) {
		this.brandSite = brandSite;
	}
	public int getBrandId() {
		return brandId;
	}
	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public String getBrandDescription() {
		return brandDescription;
	}
	public void setBrandDescription(String brandDescription) {
		this.brandDescription = brandDescription;
	}
	public MultipartFile getBrandImage() {
		return brandImage;
	}
	public void setBrandImage(MultipartFile brandImage) {
		this.brandImage = brandImage;
	}
	
	
}
