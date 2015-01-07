package com.smilingframework.support.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smilingframework.support.dao.UserDao;
import com.smilingframework.support.model.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	public void add(User user){
		userDao.save(user);
	}
}
