package com.crsp.utils;

import com.google.gson.Gson;

public class JsonUtil {
	public static String toJson(Object obj) {
		return (new Gson()).toJson(obj);
	}
}
