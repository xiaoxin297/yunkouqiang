package com.smilingframework.support.web;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.smilingframework.support.model.User;
import com.smilingframework.support.service.UserService;

@Controller
public class TempletTestController {

	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/t/1")
	@ResponseBody
	public String test(){
		User user = new User();
		user.setUuid(UUID.randomUUID().toString());
		user.setName("name");
		user.setPassword("password");
		userService.add(user);
		return "abc";
	}
}
