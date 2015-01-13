package com.smilingframework.support.service.impl;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.smilingframework.service.base.impl.BaseServiceImpl;
import com.smilingframework.support.dao.ModularDao;
import com.smilingframework.support.dao.RoleModularDao;
import com.smilingframework.support.model.sys.Modular;
import com.smilingframework.support.model.sys.RoleModular;
import com.smilingframework.support.service.ModularService;

@Service
public class ModularServiceImpl extends BaseServiceImpl<Modular> implements ModularService {

	@Autowired
	private ModularDao modularDao;
	@Autowired
	private RoleModularDao roleModularDao;
	
	@Override
	@Transactional(rollbackFor=Exception.class)
	public void save(List<Modular> ts) {
		modularDao.save(ts);
	}
	
	@Override
	@Cacheable(value="modular-cache")
	public List<Modular> findAll() {
		return super.findAll();
	}
	
	@Override
	public List<Modular> findByRoleId(String roleId) {
		List<RoleModular> modulars = roleModularDao.findByRoleId(roleId);
		List<String> ids = new ArrayList<>();
		if(modulars.size() > 0){
			for(RoleModular rm : modulars){
				ids.add(rm.getModularId());
			}
		}
		return modularDao.findAll(ids);
	}
}
