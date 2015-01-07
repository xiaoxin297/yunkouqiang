package com.smilingframework.support.model;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.smilingframework.dao.base.UUIDEntity;

@Entity
@Table(name = "t_user")
public class User extends UUIDEntity {

	private String name;
	private String password;
	
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
