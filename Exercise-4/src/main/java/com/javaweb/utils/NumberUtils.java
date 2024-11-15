package com.javaweb.utils;

public class NumberUtils {
	public static boolean check(Integer value) {
		if(value != null && value != 0) {
			return true;
		}
		return false;
	}
}
