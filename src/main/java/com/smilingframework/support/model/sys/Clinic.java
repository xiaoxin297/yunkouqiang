package com.smilingframework.support.model.sys;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.smilingframework.dao.base.BaseEntity;

@Entity
@Table(name="t_clinic")
public class Clinic extends BaseEntity {
	
	private static final long serialVersionUID = 2360529429392519157L;
	private String name;
	private String identification;
	private String address;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIdentification() {
		return identification;
	}
	public void setIdentification(String identification) {
		this.identification = identification;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
}
