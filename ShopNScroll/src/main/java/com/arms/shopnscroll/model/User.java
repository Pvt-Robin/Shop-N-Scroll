package com.arms.shopnscroll.model;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.annotations.Expose;

@Entity
@Table(uniqueConstraints=@UniqueConstraint(columnNames={"username", "email", "contact"}))
public class User implements Serializable
{
	private static final long serialVersionUID = 1L;
	
	@Id
	@Expose
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int userId;

	@NotEmpty(message="Cannot Be Empty")
	@Expose
	@Pattern(regexp="^[a-zA-Z_]*$", message="Cannot Have Numbers,Symbols or Space")
	private String firstName;
	
	@NotEmpty(message="Cannot Be Empty")
	@Expose
	@Pattern(regexp="^[a-zA-Z_]*$", message="Cannot Have Numbers,Symbols or Space")
	private String lastName;
	
	@NotEmpty(message="Cannot Be Empty")
	@Expose
	@Pattern(regexp="(^$|[0-9]{10})", message="Cannot have Characters,Symbols or Space")
	private String contact;
	
	@NotEmpty(message="Cannot Be Empty")
	@Expose
	@Email(message="Email Format Incorrect")
	private String email;
	
	@NotEmpty(message="Gender Is Mandatory")
	@Expose
	private String gender;
	
	@Expose
	private String role;
	
	@Expose
	private boolean enabled;
	
	@Expose
	@NotEmpty(message="Date of Birth is Mandatory")
	private String dateOfBirth;
	
	@Expose
	private Date createdDate = new Date();
	
	@Expose
	@NotEmpty(message="Cannot Be Empty")
	private String username;
	
	@Expose
	@NotEmpty(message="Cannot Be Empty")
	@Length(min=8, max=16, message="Should Be 8-16 Characters Long")
	private String password;
	
	@Transient
	@Expose
	private MultipartFile userAvatar;
	
	@Expose
	private int cartId;
	
	@Expose
	private int billId;
	
	@Expose
	private int shipId;
	
	@OneToOne (mappedBy="user")
	private Cart cart;
	
	@OneToOne (mappedBy="user")
	private BillingAddress billingAddress;
	
	@OneToOne (mappedBy="user")
	private ShippingAddress shippingAddress;
	
	@OneToMany(mappedBy="user", fetch=FetchType.EAGER)
	private Set<CartItems> cartItems;

	public Set<CartItems> getCartItems() {
		return cartItems;
	}
	public void setCartItems(Set<CartItems> cartItems) {
		this.cartItems = cartItems;
	}
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public int getBillId() {
		return billId;
	}
	public void setBillId(int billId) {
		this.billId = billId;
	}
	public int getShipId() {
		return shipId;
	}
	public void setShipId(int shipId) {
		this.shipId = shipId;
	}	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public MultipartFile getUserAvatar() {
		return userAvatar;
	}
	public void setUserAvatar(MultipartFile userAvatar) {
		this.userAvatar = userAvatar;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public BillingAddress getBillingAddress() {
		return billingAddress;
	}
	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}
	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}
	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

}
