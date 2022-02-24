package com.gbdf.bdf;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class loginController {
	
	private static final Logger logger = LoggerFactory.getLogger(loginController.class);
		
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		//model.addAttribute("userVO", new UserVO());
		
		
		logger.info("====================================================================");
		logger.info("[ 프로그램       ] 홈");
		logger.info("[ RequestMapping ] /login");
		logger.info("[ Controller     ] loginController.login");		
		logger.info("[ return         ] /login/login");		
		logger.info("--------------------------------------------------------------------");
		logger.info("[ 매개변수       ]");
		logger.info("--------------------------------------------------------------------");
		logger.info("[ 현재시간       ] " + formattedDate);
		logger.info("====================================================================");
				
		return "/login/login";
	}	
}
