package com.gbdf.bdf.sys.service;

import java.util.List;

import com.gbdf.bdf.sys.model.Sys101100mVO;

public interface Sys101100mService {
	
	// 회사 : 조회
	// DTO 호출
	public List<Sys101100mVO> selectCompanyList() throws Exception;

}
