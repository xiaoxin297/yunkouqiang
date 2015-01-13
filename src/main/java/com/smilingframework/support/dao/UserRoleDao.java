package com.smilingframework.support.dao;

import com.smilingframework.dao.base.BaseJpaRepository;
import com.smilingframework.support.model.sys.UserRole;

public interface UserRoleDao extends BaseJpaRepository<UserRole, String> {

	public UserRole findByUserId(String userId);
}
