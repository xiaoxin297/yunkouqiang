package com.smilingframework.support.model.sys;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.springframework.stereotype.Service;

import com.smilingframework.dao.base.BaseEntity;

@Entity
@Table(name="t_role_modular")
public class RoleModular extends BaseEntity {

	private static final long serialVersionUID = 5391699344723229926L;
	
	@Column(name="role_id")
	private String roleId;
	@Column(name="modular_id")
	private String modularId;
	
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public String getModularId() {
		return modularId;
	}
	public void setModularId(String modularId) {
		this.modularId = modularId;
	}
	
}
