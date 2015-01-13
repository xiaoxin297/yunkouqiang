package com.smilingframework.support.web.base;

import com.smilingframework.support.common.ContextUtils;
import com.smilingframework.support.common.FinalValue;
import com.smilingframework.support.model.sys.User;
import com.smilingframework.web.controller.base.BaseController;

public class KouQiangController extends BaseController {

	public User getUser(){
		return (User)ContextUtils.getRequest().getAttribute(FinalValue.REQUEST_USER);
	}
}
