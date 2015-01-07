package com.smilingframework.support.model.sys;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.smilingframework.dao.base.BaseEntity;
import com.smilingframework.dao.base.UUIDEntity;

@Entity
@Table(name = "t_user")
public class User extends BaseEntity {

	private static final long serialVersionUID = -3895067324469730311L;
	private String name;
	private String password;// 登录密码
	private String phone;// 手机 登录帐号
	private String token;// 用户票据
	private String email;
	
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
