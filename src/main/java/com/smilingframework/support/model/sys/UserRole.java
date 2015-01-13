package com.smilingframework.support.model.sys;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.smilingframework.dao.base.BaseEntity;

@Table(name="t_user_role")
@Entity
public class UserRole extends BaseEntity {

	private static final long serialVersionUID = 8361965883407956248L;
	
	@Column(name="user_id")
	private String userId;
	@Column(name="role_id")
	private String roleId;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	
}
