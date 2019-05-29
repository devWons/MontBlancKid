package com.si.top.instar.service;

import java.net.InetAddress;
import java.util.List;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.Connection.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.si.top.instar.dao.InstarDao;
import com.si.top.unsan.domain.UserInfoVO;

@Service
public class InstarServiceImpl implements InstarService {
	private static final Logger log = LoggerFactory.getLogger(InstarServiceImpl.class);
	public static final String CLIENT_ID = "e5f6da8c60054e368309bcb7453ade86";
	public static final String REDIRECT_URI = "http://skswodnjs02.cafe24.com/mblk/mblkMain.php";
	
	
	@Autowired
	InstarDao instarDao;

	@Override
	public List<UserInfoVO> selectUserList(UserInfoVO userInfoVo) {
		return instarDao.selectUserList(userInfoVo);
	}

	@Override
	public void instarProcessStep1() {

		try {
			//로그인화면
			//https://www.instagram.com/accounts/login/?source=auth_switcher
			Response loginForm = Jsoup.connect("https://www.instagram.com/accounts/login/?source=auth_switcher")
					.method(Connection.Method.GET)
					.execute();
			
			//토큰얻는 api
			String url = "https://api.instagram.com/oauth/authorize/?client_id="+CLIENT_ID+"&redirect_uri="+REDIRECT_URI+"&response_type=token";
			Response loginPage = Jsoup.connect("https://api.instagram.com/oauth/authorize/")
					.data("client_id", CLIENT_ID)
					.data("redirect_uri", REDIRECT_URI)
					.data("response_type", "token")
					.cookies(loginForm.cookies())
					.header("content-type", "application/json;charset=UTF-8")
					.header("accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8")
					.header("accept-encoding", "gzip, deflate, br")
					.header("accept-language", "ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7")
					.userAgent("Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36")
					.method(Connection.Method.POST)
					.requestBody("JSON")
					.ignoreContentType(true)
					.timeout(5000)
					.execute();
			
			System.out.println("로그인한 후 쿠키값 : "+ loginPage.cookies());
			
			
		
		} catch (Exception e) {
			log.debug(e.getMessage());
		}

		
	}

}
