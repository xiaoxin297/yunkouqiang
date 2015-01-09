package com.smilingframework.support.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smilingframework.service.base.impl.BaseServiceImpl;
import com.smilingframework.support.dao.UserDao;
import com.smilingframework.support.model.sys.User;
import com.smilingframework.support.service.UserService;

@Service
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {

	@Autowired
	private UserDao userDao;

	@Override
	public User findByToken(String token) {
		List<User> users = userDao.findByToken(token);
		if(users.size() == 1){
			return users.get(0);
		}
		return null;
	}
	
	@Override
	public User findByPhone(String phone) {
		return userDao.findByPhone(phone);
	}

}
