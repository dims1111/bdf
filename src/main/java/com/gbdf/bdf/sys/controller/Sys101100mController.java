package com.gbdf.bdf.sys.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gbdf.bdf.loginController;
import com.gbdf.bdf.sys.service.Sys101100mService;

@Controller
@RequestMapping("/sys101100m")
public class Sys101100mController {
	
	private static final Logger logger = LoggerFactory.getLogger(loginController.class);
	
	@Autowired
	private Sys101100mService sys101100mService;

	@RequestMapping("/list")
	public String selectCompanyList(@RequestParam(value="method_type") String paramMethodType
			                       ,@RequestParam(value="company_code") String paramCompanyCode
			                       ,@RequestParam(value="company_name") String ParamCompanyName
			                       ,Model model) throws Exception {
		
		logger.info("====================================================================");
		logger.info("[ 프로그램       ] 회사등록/목록조회");
		logger.info("[ RequestMapping ] /sys101100m/list");
		logger.info("[ Controller     ] Sys101100mController.selectCompanyList");
		logger.info("[ return         ] /sys/sys101100m/list");
		logger.info("--------------------------------------------------------------------");
		logger.info("[ 매개변수       ]");
		logger.info("--------------------------------------------------------------------");
		logger.info("[ 전달방식       ] " + paramMethodType);
		logger.info("[ 회사코드       ] " + paramCompanyCode);
		logger.info("[ 회 사 명       ] " + ParamCompanyName);
		logger.info("====================================================================");
		
		// 회사 : 조회
		// 서비스 인터페이스 호출
		model.addAttribute("selectCompanyList", sys101100mService.selectCompanyList());
		
		return "/sys/sys101100m/list";
	}
}
