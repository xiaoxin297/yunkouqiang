package com.smilingframework.support.service;

import org.springframework.stereotype.Service;

import com.smilingframework.service.base.BaseService;
import com.smilingframework.support.model.sys.Role;

public interface RoleService extends BaseService<Role> {

	public Role findRoleByUserId(String id);
}
