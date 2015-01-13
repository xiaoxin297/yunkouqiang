package com.smilingframework.support.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.smilingframework.service.base.BaseService;
import com.smilingframework.support.model.sys.Modular;

public interface ModularService extends BaseService<Modular>{

	public List<Modular> findByRoleId(String roleId);
}
