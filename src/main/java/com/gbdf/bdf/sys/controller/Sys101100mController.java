package com.gbdf.bdf.sys.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gbdf.bdf.loginController;
import com.gbdf.bdf.sys.model.Sys101100mVO;
import com.gbdf.bdf.sys.service.Sys101100mService;
import com.gbdf.bdf.util.Util;

@Controller
@RequestMapping("/sys/sys101100m")
public class Sys101100mController {
	
	// 로거 변수 선언
	private static final Logger logger = LoggerFactory.getLogger(loginController.class);
	
	// 서비스 인터페이스 객체 메모리 할당
	@Autowired
	private Sys101100mService sys101100mService;
	
	@RequestMapping("/list")
	public String selectCompanyList(@RequestParam(value="method_type", required=false) String paramMethodType
			                       ,@RequestParam(value="company_code", defaultValue="BT1" ) String paramCompanyCode
			                       ,@RequestParam(value="company_name", required=false) String ParamCompanyName
			                       ,Model model) throws Exception {
		
		logger.info("====================================================================");
		logger.info("[ 프로그램       ] 회사등록/조회");
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
		
		// 인터페이스 호출 : 데이터 조회
		model.addAttribute("selectCompanyList", sys101100mService.selectCompanyList());
		
		// 데이터 조회 화면 호출
		return "/sys/sys101100m/list";
	}
	
	@RequestMapping("/new")
	public void newComapny() throws Exception {
		
	}
	
	
	@RequestMapping("/save")
	public String saveCompany(@ModelAttribute("Sys101100mVO") Sys101100mVO sys101100mVO
                             ,RedirectAttributes rttr) throws Exception {
		
		logger.info("====================================================================");
		logger.info("[ 프로그램       ] 회사등록/저장");
		logger.info("[ RequestMapping ] /sys101100m/save");
		logger.info("[ Controller     ] Sys101100mController.saveCompany");
		logger.info("[ return         ] /sys/sys101100m/save");		
        logger.info("--------------------------------------------------------------------");
        logger.info("[ 매개변수       ]");
        logger.info("--------------------------------------------------------------------");        
        logger.info("[ 회사코드         ] " + Util.fnIsNullStr(sys101100mVO.getCompany_code()));
        logger.info("[ 회사명(한글)     ] " + Util.fnIsNullStr(sys101100mVO.getCompany_name_kr()));
        logger.info("[ 회사명(영문)     ] " + Util.fnIsNullStr(sys101100mVO.getCompany_name_en()));
        logger.info("[ 시작일자         ] " + Util.fnIsNullStr(sys101100mVO.getBegin_date()));
        logger.info("[ 종료일자         ] " + Util.fnIsNullStr(sys101100mVO.getEnd_date()));
        logger.info("[ 사용여부         ] " + Util.fnIsNullStr(sys101100mVO.getUser_yn()));
        logger.info("[ 주소라인1        ] " + Util.fnIsNullStr(sys101100mVO.getAddress_line1()));
        logger.info("[ 주소라인2        ] " + Util.fnIsNullStr(sys101100mVO.getAddress_line2()));
        logger.info("[ 우편번호         ] " + Util.fnIsNullStr(sys101100mVO.getZip_code()));
        logger.info("[ 이메일           ] " + Util.fnIsNullStr(sys101100mVO.getEmail_address()));
        logger.info("[ 전화번호         ] " + Util.fnIsNullStr(sys101100mVO.getTelephone_number()));
        logger.info("[ 설명             ] " + Util.fnIsNullStr(sys101100mVO.getDescription()));
        logger.info("====================================================================");
		
		// 인터페이스 호출 : 신규 데이터 저장
		sys101100mService.saveCompany(sys101100mVO);
		
		// 신규 데이터 입력 화면 호출
		return "redirect:/sys/sys101100m/new";
	}
}
