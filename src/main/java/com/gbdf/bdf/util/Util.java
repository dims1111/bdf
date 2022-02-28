package com.gbdf.bdf.util;

import org.springframework.stereotype.Service;

@Service
public class Util {
	
	public static String fnIsNullStr(Object obj) {
		
		if(obj == null) return "null";
		if((obj instanceof String) && (((String)obj).trim().length() == 0)) {return "null";}
		
		return (String) obj.toString();
	}

}
