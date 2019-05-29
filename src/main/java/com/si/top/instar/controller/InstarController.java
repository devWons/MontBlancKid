package com.si.top.instar.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.si.top.instar.service.InstarService;
import com.si.top.unsan.domain.UserInfoVO;

@Controller
public class InstarController {
	
	private final Logger log = LoggerFactory.getLogger(InstarController.class);
	
	@Autowired
	InstarService instarService;
	
	@RequestMapping(value = "instartMain.php")
	public String surveyHome(UserInfoVO userInfoVo, Model model) {
		log.debug("========== INSTARGRAM Start !! ===========");
		
		instarService.instarProcessStep1();
		
		
		
		return "instar/instarMain";
	}
	
}
