package com.smilingframework.support.web.admin;

import javax.validation.Valid;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.smilingframework.support.model.sys.Clinic;
import com.smilingframework.support.model.sys.User;
import com.smilingframework.support.service.ClinicService;
import com.smilingframework.support.web.admin.model.clinic.ClinicAddRequest;
import com.smilingframework.support.web.base.KouQiangController;
import com.smilingframework.web.controller.base.BaseResponse;
import com.smilingframework.web.controller.base.HttpResponseBody;

@Controller
@RequestMapping("/clinic")
public class ClinicController extends KouQiangController {
	
	@Autowired
	private ClinicService clinicService;
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	@ResponseBody
	public BaseResponse add(@Valid ClinicAddRequest request,BindingResult result){
		if(result.hasErrors()){
			return setRequestErroorResult(result);
		}
		Clinic clinic = new Clinic();
		BeanUtils.copyProperties(request, clinic);
		User user = getUser();
		clinic.setUserId(user.getUuid());
		clinicService.save(clinic);
		return setSuccestResult(new HttpResponseBody());
	}

}
