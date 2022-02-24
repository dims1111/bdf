package com.gbdf.bdf.sys.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gbdf.bdf.loginController;
import com.gbdf.bdf.sys.model.Sys101100mVO;


//매퍼 호출
@Service
public class Sys101100mServiceImpl implements Sys101100mService {

	// 매퍼 경로 선언
	private static final String NAMESPACE = "com.gbdf.bdf.sys.Sys101100mMapper";
	
	// 로거 변수 선언
	private static final Logger logger = LoggerFactory.getLogger(loginController.class);
	
	@Autowired
	private SqlSession sqlSession;
	
	// 데이터 조회	
	@Override
	public List<Sys101100mVO> selectCompanyList() throws Exception {	
		
		logger.info("====================================================================");
		logger.info("[ 프로그램       ] 회사등록/조회");
		logger.info("[ ServiceImpl    ] Sys101100mServiceImpl.selectCompanyList");
		logger.info("[ selectList     ] selectCompanyList");
		logger.info("====================================================================");
		
		return sqlSession.selectList(NAMESPACE + ".selectCompanyList");
	}
	
	// 신규 데이터 저장
	@Override
	public void saveCompany(Sys101100mVO sys101100mVO) throws Exception {

		logger.info("====================================================================");
		logger.info("[ 프로그램       ] 회사등록/신규 데이터 저장");
		logger.info("[ ServiceImpl    ] Sys101100mServiceImpl.saveCompany");
		logger.info("[ selectList     ] insertCompany");
		logger.info("====================================================================");
		
		sys101100mVO.setCompany_code("BUILT1");
		sys101100mVO.setCompany_name_kr("주식회사 빌트원1");
		sys101100mVO.setCompany_name_en("Buitl1 co,.ltd");
		sys101100mVO.setBegin_date("2020-02-22");
		sys101100mVO.setUser_yn("Y");
		
		sqlSession.insert(NAMESPACE + ".insertCompany", sys101100mVO);
	}
}
