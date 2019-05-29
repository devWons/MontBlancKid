package com.si.top.instar.service;

import java.util.List;

import com.si.top.unsan.domain.UserInfoVO;

public interface InstarService {

	/**
	 * 가입된 모든 사용자정보를 가져온다.
	 * @param userInfoVo 
	 * @return
	 */
	List<UserInfoVO> selectUserList(UserInfoVO userInfoVo);

	void instarProcessStep1();


}
