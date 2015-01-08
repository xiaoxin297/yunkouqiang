package com.smilingframework.support.service.impl;

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
	
}
