package com.crsp.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeUtil {
	public static String getStringDateShort() {
		Date currentTime = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = formatter.format(currentTime);
		return dateString;
	}
}
