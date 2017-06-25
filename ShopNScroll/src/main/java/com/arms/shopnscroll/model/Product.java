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
	
	@NotEmpty(message="Name Is Required")
	@Expose
	private String productName;
	
	@NotEmpty(message="Description Is Required")
	@Expose
	private String description;
	
	@NotNull(message="Actual Price Is Required")
	@Min(value=1, message="Cannot Be 0 Or Less")
	@Expose
	private float price;
	 
	@NotNull(message="Discount Is Required")
	@Max(value=85, message="Cannot Be Greater Than 85%")
	@Expose
	private int discount;
	
	@Expose
	private float productAmount;
	
	@NotNull(message="*")
	@Expose
	private int viewCount;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Expose
	private Date createdDate = new Date();

	@NotNull(message="Rating Is Required")
	@Min(value=1, message="Cannot Be Lesser Than 1")
	@Max(value=5, message="Cannot Be Greater Than 5")
	@Expose
	private float rating = 1;
	
	@NotEmpty(message="Country Is Required")
	@Expose
	private String madeCountry;
	
	@NotNull(message="Stock Is Needed")
	@Min(value=0, message="Cannot Be Less Than 0")
	@Expose
	private int stock;
	
	@Expose
	private boolean enabled;
	
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

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
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

	public float getProductAmount() {
		return productAmount;
	}

	public void setProductAmount(float productAmount) {
		this.productAmount = productAmount;
	}

}
