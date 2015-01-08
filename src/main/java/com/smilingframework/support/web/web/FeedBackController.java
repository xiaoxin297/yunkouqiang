package com.smilingframework.support.web.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smilingframework.web.controller.base.BaseController;

@Controller
@RequestMapping("/feedback")
public class FeedBackController extends BaseController {

	@RequestMapping("/")
	public String index(){
		return "/web/message";
	}
}
