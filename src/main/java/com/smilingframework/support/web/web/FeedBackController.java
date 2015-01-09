package com.smilingframework.support.web.web;

import javax.validation.Valid;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.smilingframework.support.model.FeedBack;
import com.smilingframework.support.service.FeedBackService;
import com.smilingframework.support.web.web.model.FeedBackAddRequest;
import com.smilingframework.web.controller.base.BaseController;
import com.smilingframework.web.controller.base.BaseResponse;

@Controller
public class FeedBackController extends BaseController {

	
	@Autowired
	private FeedBackService backService;
	
	@RequestMapping(value = "/feedback",method=RequestMethod.GET)
	public String index(){
		return "/web/message";
	}
	
	@RequestMapping(value = "/feedback",method=RequestMethod.POST)
	@ResponseBody
	public BaseResponse add(@Valid FeedBackAddRequest request,BindingResult result){
		if(result.hasErrors()){
			return setRequestErroorResult(result);
		}
		FeedBack feedBack = new FeedBack();
		BeanUtils.copyProperties(result, feedBack);
		backService.save(feedBack);
		return setSuccestResult(new BaseResponse());
	}
}
