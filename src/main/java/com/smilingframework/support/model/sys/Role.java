package com.smilingframework.support.model.sys;

import javax.persistence.Column;
import javax.persistence.Table;

import javax.persistence.Entity;

import com.smilingframework.dao.base.BaseEntity;

@Entity
@Table(name="t_role")
public class Role extends BaseEntity{

	private static final long serialVersionUID = -4977803687871552892L;

	private String name;
	@Column(name="clinic_id")
	private String clinicId;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getClinicId() {
		return clinicId;
	}
	public void setClinicId(String clinicId) {
		this.clinicId = clinicId;
	}
}
