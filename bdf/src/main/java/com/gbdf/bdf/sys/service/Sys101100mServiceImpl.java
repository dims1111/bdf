package com.gbdf.bdf.sys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gbdf.bdf.sys.model.Sys101100mVO;

@Service
public class Sys101100mServiceImpl implements Sys101100mService {

	@Autowired
	private SqlSession sqlSession;
	
	// 회사 - 조회
	@Override
	public List<Sys101100mVO> selectCompanyList(Sys101100mVO sys101100mVO) throws Exception {
		
	}

}
