package com.si.top.railInfo.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.jsoup.Connection;
import org.jsoup.Connection.Response;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.si.top.railInfo.railVO.RailInfoVO;

@Controller
public class RailInfoController {
	
	private static final String CONNECTION_URL = "https://www.letskorail.com/korail/com/loginAction.do";
	
	@RequestMapping(value = "test.php")
	public String railLogin2(RailInfoVO vo, HttpServletRequest req, Model model) throws Exception {
	
		
		System.out.println("코레일 로그인 START!");
		System.out.println("-------------------------------------------------------------------");
		String kNum = vo.getId();
		String kPw = vo.getPw();
		
		//코레일 로그인하기
//		JSOUPConnection jc = new JSOUPConnection();
		Response res = login(vo, kNum, kPw);
		
		//로그인 후 파싱
		parseDocument(res);
//		System.out.println("-------------------------------------------------------------------");
//		System.out.println("bye bye~");
		
		return "railInfo/railLogin";
		
	}
	
	public Response login(RailInfoVO vo, String kNum, String kPw)
	{
		Connection.Response res = null;
		try {
		System.out.println("> "+ kNum +" / "+ kPw + "로그인 시도중....");
		res = Jsoup.connect(CONNECTION_URL)
				.followRedirects(true)
				.data("radInputFlg", "2")		//멤버쉽번호로 로그인
				.data("txtMember", kNum)		//멤버쉽번호
				.data("txtPwd", kPw)			//비밀번호
				.data("txtBookCnt", vo.getTxtBookCnt())
				.data("txtIvntDt", vo.getTxtIvntDt())
				.data("txtTotCnt", vo.getTxtTotCnt())
				.data("selValues", vo.getSelValues())
				.data("selInputFlg",vo.getSelInputFlg())
				.data("radIngrDvCd", vo.getRadIngrDvCd())
				.data("ret_url", vo.getRet_url())
				.data("hidMemberFlg", vo.getHidMemberFlg())
				.data("txtHaeRang", vo.getTxtHaeRang())
				.data("hidEmailAdr", vo.getHidEmailAdr())
				.data("txtDv", vo.getTxtDv())
				.data("UserId", vo.getUserId())
				.data("UserPwd", vo.getUserPwd())
				.data("encUserId", vo.getEncUserId())
				.data("encUserPwd", vo.getEncUserPwd())
				.data("keyname", vo.getKeyname())
				.data("acsURI", vo.getAcsURI())
				.data("providerName", vo.getProviderName())
				.data("forwardingURI", vo.getForwardingURI())
				.data("RelayState", vo.getRelayState())
				.data("IPType", vo.getIPType())
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
			Document doc = res.parse();
			
//			Elements elements = doc.select("log_nm");
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
