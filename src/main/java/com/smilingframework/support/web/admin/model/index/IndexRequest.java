package com.smilingframework.support.web.admin.model.index;

public class IndexRequest {

	private String userId;
	private String clinicId;// 诊所ID
	private String clinicIdentification;// 诊所标示
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getClinicId() {
		return clinicId;
	}
	public void setClinicId(String clinicId) {
		this.clinicId = clinicId;
	}
	public String getClinicIdentification() {
		return clinicIdentification;
	}
	public void setClinicIdentification(String clinicIdentification) {
		this.clinicIdentification = clinicIdentification;
	}
}
