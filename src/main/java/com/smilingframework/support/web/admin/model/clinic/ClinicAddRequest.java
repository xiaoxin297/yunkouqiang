package com.smilingframework.support.web.admin.model.clinic;

import org.hibernate.validator.constraints.NotBlank;

public class ClinicAddRequest {

	@NotBlank(message = "诊所名称不能为空")
	private String name;
	@NotBlank(message = "诊所地址不能为空")
	private String address;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}
