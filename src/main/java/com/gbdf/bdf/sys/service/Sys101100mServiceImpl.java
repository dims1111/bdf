package com.gbdf.bdf.sys.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gbdf.bdf.loginController;
import com.gbdf.bdf.sys.model.Sys101100mVO;
import com.gbdf.bdf.util.Util;


//매퍼 호출
@Service
public class Sys101100mServiceImpl implements Sys101100mService {

	// 매퍼 경로 선언
	private static final String NAMESPACE = "com.gbdf.bdf.sys.Sys101100mMapper";
	
	// 로거 변수 선언
	private static final Logger logger = LoggerFactory.getLogger(loginController.class);
	
	@Autowired
	private SqlSession session;
	
	// 데이터 조회	
	@Override
	public List<Sys101100mVO> selectCompanyList() throws Exception {
		
		logger.info("====================================================================");
		logger.info("[ 프로그램       ] 회사등록/조회");
		logger.info("[ ServiceImpl    ] Sys101100mServiceImpl.selectCompanyList");
		logger.info("[ selectList     ] selectCompanyList");
		logger.info("====================================================================");
		
		return session.selectList(NAMESPACE + ".selectCompanyList");
	}
	
	
	// 데이터 조회2
	@Override
	public List<Sys101100mVO> selectCompanyList2() throws Exception {
		
		logger.info("====================================================================");
		logger.info("[ 프로그램       ] 회사등록/조회2");
		logger.info("[ ServiceImpl    ] Sys101100mServiceImpl.selectCompanyList2");
		logger.info("[ selectList     ] selectCompanyList");
		logger.info("====================================================================");
		
		return session.selectList(NAMESPACE + ".selectCompanyList");
	}
	
	  
	// 신규 데이터 저장
	@Override
	public void saveCompany(Sys101100mVO sys101100mVO) throws Exception {

		logger.info("====================================================================");
		logger.info("[ 프로그램       ] 회사등록/신규 데이터 저장");
		logger.info("[ ServiceImpl    ] Sys101100mServiceImpl.saveCompany");
		logger.info("[ selectList     ] insertCompany");
		logger.info("====================================================================");		
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
		
		session.insert(NAMESPACE + ".insertCompany", sys101100mVO);
	}
}
