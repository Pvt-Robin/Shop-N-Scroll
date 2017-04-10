package com.arms.shopnscroll.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.google.gson.annotations.Expose;

@Entity
public class CartItems implements Serializable
{
	private static final long serialVersionUID = 1L;
	
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
@Expose
private int cartItemsId;

@Expose
private int cartId;		

@Expose             
private int userId;	

@Expose
private String productName;

@Expose
private int productId;

@Expose
private int quantity;

@Expose
private float price;

@Expose
private float amount;

@Expose
private int discount;

@Expose
private Date placedDate;

@Expose
private String flag;

@ManyToOne
@JoinColumn(name="userId", nullable=false , updatable=false , insertable=false )
private User user;

@ManyToOne
@JoinColumn(name="cartId", nullable=false , updatable=false , insertable=false )
private Cart cart;

public int getCartItemsId() {
	return cartItemsId;
}

public void setCartItemsId(int cartItemsId) {
	this.cartItemsId = cartItemsId;
}

public String getProductName() {
	return productName;
}

public void setProductName(String productName) {
	this.productName = productName;
}

public int getQuantity() {
	return quantity;
}

public void setQuantity(int quantity) {
	this.quantity = quantity;
}


public void setPrice(int price) {
	this.price = price;
}

public float getPrice() {
	return price;
}

public void setPrice(float price) {
	this.price = price;
}

public float getAmount() {
	return amount;
}

public void setAmount(float amount) {
	this.amount = amount;
}

public void setAmount(int amount) {
	this.amount = amount;
}

public Date getPlacedDate() {
	return placedDate;
}

public void setPlacedDate(Date placedDate) {
	this.placedDate = placedDate;
}

public String getFlag() {
	return flag;
}

public void setFlag(String flag) {
	this.flag = flag;
}

public Cart getCart() {
	return cart;
}

public void setCart(Cart cart) {
	this.cart = cart;
}

public int getUserId() {
return userId;
}

public void setUserId(int userId) {
this.userId = userId;
}

public int getCartId() {
	return cartId;
}

public void setCartId(int cartId) {
	this.cartId = cartId;
}

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

public int getDiscount() {
	return discount;
}

public void setDiscount(int discount) {
	this.discount = discount;
}


}
