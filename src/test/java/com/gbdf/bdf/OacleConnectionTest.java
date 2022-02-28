package com.gbdf.bdf;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;

import oracle.jdbc.OracleDriver;


public class OacleConnectionTest {
	
	// logger 변수 : 메모리에 할당 
	private static final Logger logger = LoggerFactory.getLogger(OacleConnectionTest.class);
	private static final String DRIVER = "oracle.jdbc.driver.OracleDriver";	
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:orcl";
	private static final String USERNAME = "apps";
	private static final String PASSWORD = "apps";
		
	@Test
	public void testConnection() throws Exception {		
		Class.forName(DRIVER);		
		Connection conn = null;
		try {
			DriverManager.registerDriver(new OracleDriver());
			conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			
			// URL 오른쪽 문자 4자리 자르기
			int totCnt = URL.length();
			int scCnt = StringUtils.countOccurrencesOf(URL, ":");
			String segments[] = URL.split(":");
			String serviceName = segments[segments.length - 1];
			int lastValue = URL.lastIndexOf(":") + 1;
			
			logger.info("URL 전체 문자 갯수 : " + totCnt);
			logger.info("':' 갯수 : " + scCnt);
			logger.info("서비스명 : " + serviceName);
			logger.info("':' 마지막 위치 - 1 : " + lastValue);
			logger.info("':' 최종문자 : " + URL.substring(lastValue, totCnt));
			
			logger.info("### 정상적으로 Oracle 사용자(" + USERNAME + "), 서비스명(" + serviceName + ") ###");			
		} catch (Exception e) {
			logger.error("### Oracle 연결 실폐 : " + e.getMessage());
		} finally {
			try {
				conn.close();
				logger.info("Oracle 연결 해제 완료");
			} catch (SQLException e) {
				logger.error("Oracle 연결 실폐 : " + e.getMessage());
			}
		}
	}
}
