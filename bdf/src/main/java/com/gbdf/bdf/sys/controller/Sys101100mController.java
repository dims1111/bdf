package com.gbdf.bdf.sys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gbdf.bdf.sys.model.Sys101100mVO;
import com.gbdf.bdf.sys.service.Sys101100mService;

@Controller
@RequestMapping("/sys101100m")
public class Sys101100mController {
	
	@Autowired
	private Sys101100mService sys101100mService;

	@RequestMapping("/list")
	public String selectCompanyList(Sys101100mVO sys101100mVO, Model model) throws Exception {
		
		// 회사 : 조회
		// 서비스 인터페이스 호출
		model.addAttribute("selectCompanyList", sys101100mService.selectCompanyList(sys101100mVO));
		
		return "/sys/sys101100m/list";
	}
}
