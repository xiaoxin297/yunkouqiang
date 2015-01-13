package com.smilingframework.support.model.sys;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.smilingframework.dao.base.BaseEntity;

@Table(name="t_modular")
@Entity
public class Modular extends BaseEntity {

	private static final long serialVersionUID = -2074015949507572001L;

	private String name;
	
	@Column(name="parent_id")
	private String parentId;
	
	private String classic;// 菜单样式
	public Modular(String uuid,String name,String classic,String parentId){
		this.setUuid(uuid);
		this.name = name;
		this.parentId = parentId;
		this.classic = classic;
		this.setCreateTime(new Date());
	}
	public Modular() {
	}
	
	
	
	public String getClassic() {
		return classic;
	}
	public void setClassic(String classic) {
		this.classic = classic;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	
}
