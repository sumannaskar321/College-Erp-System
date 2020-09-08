package com.gmit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


//@Table(name="cdcpanel")
@Entity
public class CdcUser implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String username;
	private String fullname;
	private String email;
	private String password;
	
//	public CdcUser(String username, String fullname, String email, String password) {
//		super();
//		this.username = username;
//		this.fullname = fullname;
//		this.email = email;
//		this.password = password;
//	}
	
	public CdcUser() {}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
//	@Override
//	public String toString() {
//		return "CdcUser [id=" + id + ", username=" + username + ", fullname=" + fullname + ", email=" + email
//				+ ", password=" + password + "]";
//	}
	
	

}
