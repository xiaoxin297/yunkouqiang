package com.smilingframework.support.model.sys;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.smilingframework.dao.base.BaseEntity;

@Entity
@Table(name="t_rights")
public class Rights extends BaseEntity {

	private static final long serialVersionUID = -1381052150630489918L;
	private String name;
	@Column(name="role_id")
	private String roleId;
	@Column(name="modular_id")
	private String modularId;
	
	
	public String getModularId() {
		return modularId;
	}
	public void setModularId(String modularId) {
		this.modularId = modularId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	
}
