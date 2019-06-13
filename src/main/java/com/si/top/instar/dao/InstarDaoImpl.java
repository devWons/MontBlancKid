package com.si.top.instar.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.si.top.unsan.domain.UserInfoVO;

@Repository
public class InstarDaoImpl implements InstarDao {

	@Autowired
	SqlSession session;


}
