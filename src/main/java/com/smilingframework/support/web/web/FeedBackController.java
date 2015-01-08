package com.smilingframework.support.web.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.smilingframework.web.controller.base.BaseController;

@Controller
public class FeedBackController extends BaseController {

	@RequestMapping(value = "/feedback",method=RequestMethod.GET)
	public String index(){
		return "/web/message";
	}
	
	@RequestMapping(value = "/feedback",method=RequestMethod.POST)
	public String add(){
		return "/web/message";
	}
}
