package com.smilingframework.support.service;

import com.smilingframework.service.base.BaseService;
import com.smilingframework.support.model.sys.User;

/**
 * @author Administrator
 *
 */
public interface UserService extends BaseService<User> {

	public User findByToken(String token);
	
	public User findByPhone(String phone);
}
