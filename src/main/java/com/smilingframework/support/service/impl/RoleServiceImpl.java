package com.smilingframework.support.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smilingframework.service.base.impl.BaseServiceImpl;
import com.smilingframework.support.dao.RoleDao;
import com.smilingframework.support.dao.UserRoleDao;
import com.smilingframework.support.model.sys.Role;
import com.smilingframework.support.model.sys.UserRole;
import com.smilingframework.support.service.RoleService;

@Service
public class RoleServiceImpl extends BaseServiceImpl<Role> implements RoleService {
	
	@Autowired
	private UserRoleDao userRoleDao;
	@Autowired
	private RoleDao roleDao;
	@Override
	public Role findRoleByUserId(String id) {
		UserRole userRole = userRoleDao.findByUserId(id);
		return roleDao.getOne(userRole.getRoleId());
	}
}
