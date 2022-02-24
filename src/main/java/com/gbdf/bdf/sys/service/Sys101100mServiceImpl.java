package com.gbdf.bdf.sys.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gbdf.bdf.sys.model.Sys101100mVO;

@Service
public class Sys101100mServiceImpl implements Sys101100mService {

	private static final String NAMESPACE = "com.gbdf.bdf.sys.Sys101100mMapper";
	
	@Autowired
	private SqlSession sqlSession;
	
	// 회사 : 조회
	// 매퍼 호출
	@Override
	public List<Sys101100mVO> selectCompanyList() throws Exception {		
		return sqlSession.selectList(NAMESPACE + ".selectCompanyList");
	}
}
