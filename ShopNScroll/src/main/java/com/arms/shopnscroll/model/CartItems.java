package com.arms.shopnscroll.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.google.gson.annotations.Expose;

@Entity
public class CartItems 
{
	
@Id
@Expose
private int cartItemsId;

@Expose
private int cartId;

@Expose
private String productName;

@Expose
private int quantity;

@Expose
private int price;

@Expose
private int amount;

@Expose
private Date placedDate;

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

public int getPrice() {
	return price;
}

public void setPrice(int price) {
	this.price = price;
}

public int getAmount() {
	return amount;
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

}
