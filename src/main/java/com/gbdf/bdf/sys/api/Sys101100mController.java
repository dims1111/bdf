package com.gbdf.bdf.sys.api;

import java.util.Arrays;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gbdf.bdf.loginController;
import com.gbdf.bdf.sys.model.Sys101100mVO;
import com.gbdf.bdf.sys.service.Sys101100mService;

@RestController("apiSys101100mController")
@RequestMapping("/sys/sys101100m")
public class Sys101100mController {
	
	// 로거 변수 선언
	private static final Logger logger = LoggerFactory.getLogger(loginController.class);
	
	// 서비스 인터페이스 객체 메모리 할당
	@Autowired
	private Sys101100mService sys101100mService;
	
	@GetMapping("/list2")
	public List<Sys101100mVO> getCompany2() throws Exception {
		return selectCompanyList2();
	}
	
	
	private List<Sys101100mVO> selectCompanyList2() throws Exception {	
		
		logger.info("====================================================================");
		logger.info("[ 프로그램       ] 회사등록/조회2");
		logger.info("[ RequestMapping ] /sys101100m/list2");
		logger.info("[ Controller     ] [apiSys101100mController] Sys101100mController.selectCompanyList2");
		logger.info("[ return         ] /sys/sys101100m/list");
		logger.info("====================================================================");
		
		// 인터페이스 호출 : 데이터 조회 : 리턴 리스트
		List<Sys101100mVO> selectCompanyList = sys101100mService.selectCompanyList2();
		
		Sys101100mVO[] selectCompanyArray = selectCompanyList.toArray(new Sys101100mVO[selectCompanyList.size()]);
		
		// JSON 데이터를 리턴 했는데 JSP 페이지에서 안보이네??
		return Arrays.asList(selectCompanyArray);
	}
}
