package com.gbdf.bdf;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;

import org.slf4j.LoggerFactory;

import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

//	<properties>
//	<!-- 버전 수정 -->
//	<org.springframework-version>5.0.7.RELEASE</org.springframework-version>
//	</properties>

//	<!-- JUnit 버전 변경 -->
//	<!-- https://mvnrepository.com/artifact/junit/junit -->
//	<dependency>
//		<groupId>org.springframework</groupId>
//		<artifactId>spring-test</artifactId>
//		<version>4.2.9.RELEASE</version>
//	</dependency>
//
//	<dependency>
//   	<groupId>junit</groupId>
//    	<artifactId>junit</artifactId>
//    	<version>4.9</version>
//    	<scope>test</scope>
//	</dependency>
// 	아래 annotation 사용을 위해서는 pom.xml 라이브러 버전 변경 및 추가

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class MybatisTest {

	private static final Logger logger = LoggerFactory.getLogger(MybatisTest.class);

	@Inject
	private SqlSessionFactory sqlFactory;

	@Test
	public void testSqlSessionFactory() throws Exception {
		logger.info("### sqlFactory :" + sqlFactory);
	}

	@Test
	public void testSqlSession() throws Exception {
		try (SqlSession session = sqlFactory.openSession()) {
			logger.info("### session :" + session);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

//Ctrl + F11 Junit Test 정상적인 실행결과 내용입니다.
//INFO : org.springframework.test.context.support.DefaultTestContextBootstrapper - Loaded default TestExecutionListener class names from location [META-INF/spring.factories]: [org.springframework.test.context.web.ServletTestExecutionListener, org.springframework.test.context.support.DirtiesContextBeforeModesTestExecutionListener, org.springframework.test.context.support.DependencyInjectionTestExecutionListener, org.springframework.test.context.support.DirtiesContextTestExecutionListener, org.springframework.test.context.transaction.TransactionalTestExecutionListener, org.springframework.test.context.jdbc.SqlScriptsTestExecutionListener]
//INFO : org.springframework.test.context.support.DefaultTestContextBootstrapper - Using TestExecutionListeners: [org.springframework.test.context.web.ServletTestExecutionListener@1f2586d6, org.springframework.test.context.support.DirtiesContextBeforeModesTestExecutionListener@10683d9d, org.springframework.test.context.support.DependencyInjectionTestExecutionListener@3fc2959f, org.springframework.test.context.support.DirtiesContextTestExecutionListener@5aa9e4eb, org.springframework.test.context.transaction.TransactionalTestExecutionListener@6989da5e, org.springframework.test.context.jdbc.SqlScriptsTestExecutionListener@385c9627]
//INFO : org.springframework.beans.factory.xml.XmlBeanDefinitionReader - Loading XML bean definitions from URL [file:src/main/webapp/WEB-INF/spring/root-context.xml]
//INFO : org.springframework.context.support.GenericApplicationContext - Refreshing org.springframework.context.support.GenericApplicationContext@7ee8290b: startup date [Wed Feb 23 22:49:47 KST 2022]; root of context hierarchy
//INFO : org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor - JSR-330 'javax.inject.Inject' annotation found and supported for autowiring
//INFO : com.gbdf.bdf.MybatisTest - ### session :org.apache.ibatis.session.defaults.DefaultSqlSession@5183d589
//INFO : com.gbdf.bdf.MybatisTest - ### sqlFactory :org.apache.ibatis.session.defaults.DefaultSqlSessionFactory@7c974942
//INFO : org.springframework.context.support.GenericApplicationContext - Closing org.springframework.context.support.GenericApplicationContext@7ee8290b: startup date [Wed Feb 23 22:49:47 KST 2022]; root of context hierarchy

