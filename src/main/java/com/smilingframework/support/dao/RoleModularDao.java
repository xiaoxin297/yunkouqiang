package com.smilingframework.support.dao;

import java.util.List;

import com.smilingframework.dao.base.BaseJpaRepository;
import com.smilingframework.support.model.sys.RoleModular;

public interface RoleModularDao extends BaseJpaRepository<RoleModular,String> {

	public List<RoleModular> findByRoleId(String roleId);
}
