package com.arms.shopnscroll.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import com.google.gson.annotations.Expose;

@Entity
public class Cart 
{
	@Id
	@Expose
	private int userId;
	
	@Expose
	private int productId;
	//but use it like array

	@OneToOne
	@JoinColumn(name="userId", nullable=false , updatable=false , insertable=false )
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}


}
