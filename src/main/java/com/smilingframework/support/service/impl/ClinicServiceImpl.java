package com.smilingframework.support.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smilingframework.service.base.impl.BaseServiceImpl;
import com.smilingframework.support.dao.ClinicDao;
import com.smilingframework.support.model.sys.Clinic;
import com.smilingframework.support.service.ClinicService;

@Service
public class ClinicServiceImpl extends BaseServiceImpl<Clinic> implements ClinicService {

	@Autowired
	private ClinicDao clinicDao;
	
	@Override
	public boolean hasClinic(String userId) {
		List<Clinic> list = clinicDao.findByUserId(userId);
		if(list.size() == 0){
			return false;
		}
		return true;
	}
	
}
