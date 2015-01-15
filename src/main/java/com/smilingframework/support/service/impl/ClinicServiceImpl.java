package com.smilingframework.support.service.impl;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.smilingframework.core.runtime.utils.MD5Utils;
import com.smilingframework.service.base.impl.BaseServiceImpl;
import com.smilingframework.support.dao.ClinicDao;
import com.smilingframework.support.model.sys.Clinic;
import com.smilingframework.support.model.sys.User;
import com.smilingframework.support.service.ClinicService;

@Service
public class ClinicServiceImpl extends BaseServiceImpl<Clinic> implements ClinicService {

	@Autowired
	private ClinicDao clinicDao;
	
	@Override
	public boolean hasClinic(String userId) {
		if(clinicDao.clinicCount(userId) == 0){
			return false;
		}
		return true;
	}
	
	@Override
	public Clinic save(Clinic t,User user) {
		List<Clinic> list = clinicDao.findByUserId(user.getUuid());
		t.setUuid(UUID.randomUUID().toString());
		t.setCreateTime(new Date());
		if(list.size() == 0){
			t.setIdentification(generationClinicIdentification(t.getUuid()+user.getUuid()));
		}else{
			Clinic clinic = list.get(0);
			t.setIdentification(clinic.getIdentification());
		}
		return clinicDao.save(t);
	}
	
	private String generationClinicIdentification(String uuid){
		synchronized (uuid) {
			return MD5Utils.MD5(uuid);
		}
	}
	
}
