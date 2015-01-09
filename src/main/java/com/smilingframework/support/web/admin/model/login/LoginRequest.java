package com.smilingframework.support.web.admin.model.login;

import org.hibernate.validator.constraints.NotBlank;

public class LoginRequest {

	@NotBlank(message = "手机号码不能为空")
	private String phone;
	@NotBlank(message = "密码不能为空")
	private String password;
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
