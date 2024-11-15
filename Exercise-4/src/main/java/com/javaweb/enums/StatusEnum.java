package com.javaweb.enums;

import java.util.Map;
import java.util.TreeMap;

public enum StatusEnum {
	NEW ("Mới"),
	OLD ("Cũ"),
	;
	
	private final String statusName;
	
	StatusEnum(String statusName) {
		this.statusName = statusName;
	}
	
	public static Map<String, String> status(){
		Map<String, String> statusList = new TreeMap<String, String>();
		for (StatusEnum i : StatusEnum.values()) {
			statusList.put(i.toString(), i.statusName);
		}
		return statusList;
	}
}
