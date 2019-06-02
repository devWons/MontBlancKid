package com.si.top.hobby.dao;

import java.util.List;

import com.si.top.unsan.domain.UserInfoVO;

public interface InstarDao {

	List<UserInfoVO> selectUserList(UserInfoVO userInfoVo);


}
