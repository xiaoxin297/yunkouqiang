package com.smilingframework.support.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smilingframework.web.annotation.NeedLogin;

@Controller
@NeedLogin(needLogin=true)
public class ForwordController {

	@RequestMapping("/forword/{position}/{page}")
	public String forword(@PathVariable String position,@PathVariable String page){
		return position+"/"+page;
	}
}
