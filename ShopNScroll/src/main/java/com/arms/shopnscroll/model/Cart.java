package com.arms.shopnscroll.model;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import com.google.gson.annotations.Expose;

@Entity
public class Cart implements Serializable
{
	private static final long serialVersionUID = 1L;
	
	@Id
	@Expose
	private int cartId;
	
	@Expose
	private int userId;

	@OneToOne
	@JoinColumn(name="userId", nullable=false , updatable=false , insertable=false )
	private User user;

	@OneToMany(mappedBy="cart", fetch=FetchType.EAGER)
	private Set<CartItems> cartItems;

	public Set<CartItems> getCartItems() {
		return cartItems;
	}

	public void setCartItems(Set<CartItems> cartItems) {
		this.cartItems = cartItems;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}


}
