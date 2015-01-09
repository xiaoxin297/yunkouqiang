package com.smilingframework.support.dao;

import java.util.List;

import com.smilingframework.dao.base.BaseJpaRepository;
import com.smilingframework.support.model.sys.User;

public interface UserDao extends BaseJpaRepository<User, String> {

	public List<User> findByToken(String token);
	
	public User findByPhone(String phone);
}
