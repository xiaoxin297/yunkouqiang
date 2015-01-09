package com.smilingframework.support.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.smilingframework.dao.base.BaseEntity;

@Entity
@Table(name="t_feedback")
public class FeedBack extends BaseEntity {
	
	private static final long serialVersionUID = -799205989012292936L;
	
	@Column(name="user_id")
	private String userId;
	private String phone;// 联系方式
	private String email;// 
	private String content;// 反馈意见
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

}
