package com.smilingframework.support.service.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.smilingframework.service.base.impl.BaseServiceImpl;
import com.smilingframework.support.dao.ModularDao;
import com.smilingframework.support.model.sys.Modular;
import com.smilingframework.support.service.ModularService;

@Service
public class ModularServiceImpl extends BaseServiceImpl<Modular> implements ModularService {

	@Autowired
	private ModularDao modularDao;
	
	@Override
	@Transactional(rollbackFor=Exception.class)
	public void save(List<Modular> ts) {
		modularDao.save(ts);
	}
}
