package com.gbdf.bdf.sys.service;

import java.util.List;
import java.util.Map;

import com.gbdf.bdf.sys.model.Sys101100mVO;

// Service Implement 호출
public interface Sys101100mService {
	
	// 데이터 조회
	public List<Sys101100mVO> selectCompanyList() throws Exception;
	
	// 신규 데이터 저장
	public void saveCompany(Sys101100mVO sys101100mVO) throws Exception;
}
