package com.si.top.hobby.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.si.top.unsan.domain.UserInfoVO;

@Repository
public class HobbyDaoImpl implements HobbyDao {

	@Autowired
	SqlSession session;


}
