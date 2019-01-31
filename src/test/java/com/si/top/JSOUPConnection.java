package com.si.top;

import java.io.IOException;
import org.jsoup.Connection;
import org.jsoup.Connection.Response;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class JSOUPConnection {

	private static final String CONNECTION_URL = "http://www.letskorail.com/korail/com/login.do";
	private static final String COOKIE_NAME = "JSESSIONID";
	
	public static void main(String[] args) {
		
		System.out.println("코레일 로그인 START!");
		System.out.println("-------------------------------------------------------------------");
		String kNum = "1064186723";
		String kPw = "dnstks2fl!";
		//코레일 로그인하기
		JSOUPConnection jc = new JSOUPConnection();
		Response res = jc.login(kNum, kPw);
		
		//로그인 후 파싱
		jc.parseDocument(res);
		
		System.out.println("-------------------------------------------------------------------");
		System.out.println("bye bye~");
	}
	
	public Response login(String kNum, String kPw)
	{
		Connection.Response res = null;
		try {
		System.out.println("> "+ kNum +" / "+ kPw + "로그인 시도중....");
		res = Jsoup.connect(CONNECTION_URL)
				.followRedirects(true)
				.data("radInputFlg", "2")		//멤버쉽번호로 로그인
				.data("txtMember", kNum)		//멤버쉽번호
				.data("txtPwd", kPw)			//비밀번호
				.data("txtBookCnt", "")
				.data("txtIvntDt", "")
				.data("txtTotCnt", "")
				.data("selValues", "")
				.data("selInputFlg", "2")
				.data("radIngrDvCd", "2")
				.data("ret_url", "")
				.data("hidMemberFlg", "1")
				.data("txtHaeRang", "")
				.data("hidEmailAdr", "")
				.data("txtDv", "")
				.data("UserId", "")
				.data("UserPwd", "")
				.data("encUserId", "")
				.data("encUserPwd", "")
				.data("keyname", "49")
				.data("acsURI", "http://www.letskorail.com:80/ebizsso/sso/acs")
				.data("providerName", "Ebiz Sso")
				.data("forwardingURI", "/ebizsso/sso/sp/service_proc.jsp")
				.data("RelayState", "/ebizsso/sso/sp/service_front.jsp")
				.data("IPType", "Ebiz Sso Identity Provider")
				.method(Connection.Method.POST)
				.timeout(1000)
				.execute();
		System.out.println("로그인 상태 : "+ res.statusCode() + " / "+ res.statusMessage());
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("로그인 상태 : "+ res.statusCode() + " / "+ res.statusMessage());
		}
		return res;
	}
	
	public void parseDocument(Response res) {
		System.out.println("로그인 성공 후 HTML 코드 파싱...");
		try {
			String jsessionid = res.cookie(COOKIE_NAME);
			System.out.println(COOKIE_NAME + " cookie: " + jsessionid);
			
			
			
			
			Document doc = res.parse();
			
//			Elements elements = doc.select("btn_res");
			Elements elements = doc.select("div.gnb ul.gnb_list li");
			
			for(Element e : elements)
			{
				System.out.println(">> "+ e.html());
				
			}
			
		} catch (IOException e) {
			System.out.println("HTML 코드 파싱 실패..");
			e.printStackTrace();
			
		}
		
		System.out.println("HTML 코드 파싱 끝.");
	}

}
