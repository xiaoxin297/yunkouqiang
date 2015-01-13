package com.smilingframework.support.service;

import com.smilingframework.service.base.BaseService;
import com.smilingframework.support.model.sys.Clinic;

public interface ClinicService extends BaseService<Clinic>{

	/**
	 * 判定某个用户是否拥有诊所
	 * @param userId
	 * @return
	 */
	public boolean hasClinic(String userId);
}
