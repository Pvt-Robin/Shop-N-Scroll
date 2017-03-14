package com.arms.shopnscroll.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.annotations.Expose;

@Entity
public class Product 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Expose
	private  int productId;
	
	@NotEmpty(message="Name is required")
	@Expose
	private String productName;
	
	@NotEmpty(message="Description is required")
	@Expose
	private String description;
	
	@NotNull(message="Actual Price is required")
	@Min(value=1, message="Cannot be 0 or less")
	@Expose
	private float price;
	 
	@NotNull(message="Discount is required")
	@Max(value=85, message="Cannot be greater than 85%")
	@Expose
	private int discount;
	
	@NotNull(message="*")
	@Expose
	private int viewCount;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Expose
	private Date createdDate = new Date();

	@NotNull(message="Rating is required")
	@Min(value=1, message="Cannot be lesser than 1")
	@Max(value=5, message="Cannot be greater than 5")
	@Expose
	private float rating = 1;
	
	@NotEmpty(message="Country is required")
	@Expose
	private String madeCountry;
	
	@NotNull(message="Stock is needed")
	@Min(value=5, message="Cannot be less than 5")
	@Expose
	private int stock;
	
	@Expose
	private boolean disabled;
	
	@Expose
	private int categoryId;
	
	@Expose
	private int subCategoryId;
	
	@Expose
	private int supplierId;
	
	@Expose
	private int brandId;
	
	@Transient
	@Expose
	private MultipartFile productImage;
	
	@ManyToOne
	@JoinColumn(name="categoryId", nullable=false , updatable=false , insertable=false )
	@Expose
	private Category category;
	
	@ManyToOne
	@JoinColumn(name="subCategoryId", nullable=false , updatable=false , insertable=false )
	@Expose
	private SubCategory subCategory;
	
	@ManyToOne
	@JoinColumn(name="supplierId", nullable=false , updatable=false , insertable=false )
	@Expose
	private Supplier supplier;
	
	@ManyToOne
	@JoinColumn(name="brandId", nullable=false , updatable=false , insertable=false )
	@Expose
	private Brand brand;

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public int getViewCount() {
		return viewCount;
	}

	public float getRating() {
		return rating;
	}

	public void setRating(float rating) {
		this.rating = rating;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public boolean isDisabled() {
		return disabled;
	}

	public void setDisabled(boolean disabled) {
		this.disabled = disabled;
	}

	public String getMadeCountry() {
		return madeCountry;
	}

	public void setMadeCountry(String madeCountry) {
		this.madeCountry = madeCountry;
	}	

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public int getSubCategoryId() {
		return subCategoryId;
	}

	public void setSubCategoryId(int subCategoryId) {
		this.subCategoryId = subCategoryId;
	}

	public int getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}

	public int getBrandId() {
		return brandId;
	}

	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public SubCategory getSubCategory() {
		return subCategory;
	}

	public void setSubCategory(SubCategory subCategory) {
		this.subCategory = subCategory;
	}

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public Brand getBrand() {
		return brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	public MultipartFile getProductImage() {
		return productImage;
	}

	public void setProductImage(MultipartFile productImage) {
		this.productImage = productImage;
	}
	
	public Date getCreatedDate() {
		return createdDate;
	}

}
