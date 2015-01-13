package com.smilingframework.support.model.sys;

import java.util.Date;

import javax.persistence.Column;
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
	private Date expirationTime; // token过期时间
	@Column(name="clinic_id")
	private String clinicId; // 诊所ID
	private String identification; //诊所标识
	@Column(name="is_main",columnDefinition="boolean default 0")
	private boolean isMain;// 是否最高权限
	
	
	
	public boolean isMain() {
		return isMain;
	}
	public void setMain(boolean isMain) {
		this.isMain = isMain;
	}
	public String getClinicId() {
		return clinicId;
	}
	public void setClinicId(String clinicId) {
		this.clinicId = clinicId;
	}
	public String getIdentification() {
		return identification;
	}
	public void setIdentification(String identification) {
		this.identification = identification;
	}
	public Date getExpirationTime() {
		return expirationTime;
	}
	public void setExpirationTime(Date expirationTime) {
		this.expirationTime = expirationTime;
	}
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
