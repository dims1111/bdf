package com.gbdf.bdf.sys.service;

import java.util.List;

import com.gbdf.bdf.sys.model.Sys101100mVO;

//DTO 호출
public interface Sys101100mService {
	
	// 회사 : 조회	
	public List<Sys101100mVO> selectCompanyList() throws Exception;
	
	// 회사 : 신규등록
	public List<Sys101100mVO> saveCompany(Sys101100mVO sys101100mVO) throws Exception;

}
