package com.crsp.utils;

import java.util.List;

import com.crsp.dto.SchoolDTO;

public class Formattor {
	public static int DEFAULT_LONG = 60;
	
	private static String cutString(String s) {
		if(s.length() > DEFAULT_LONG) {
			s = s.substring(0, DEFAULT_LONG);
			return s + "....";
		}
		return s;
	}
	
	public static List formatDescription(List schools) {
		try {
			for(Object s : schools) {
				SchoolDTO school = (SchoolDTO)s;
				String description = school.getSchool_description();
				school.setSchool_description(cutString(description));
			}
			return schools;
		} catch (Exception e) {
			return schools;
		}
	}
}
