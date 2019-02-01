package com.si.top.mblk.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.si.top.unsan.domain.UserInfoVO;

@Controller
public class MBLKController {
	
	private final Logger log = LoggerFactory.getLogger(MBLKController.class);
	
	@RequestMapping(value = "mblkMain.php")
	public String surveyHome(UserInfoVO userInfoVo, Model model) {
		return "mblk/mblk";
	}
	
}
