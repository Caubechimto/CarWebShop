package com.javaweb.enums;

import java.util.Map;
import java.util.TreeMap;

public enum TransmissionEnum {
	TU_DONG ("Tự động"),
	SO_SAN ("Số sàn"),
	;

	private final String transmissionName;
	
	TransmissionEnum(String transmissionName) {
		this.transmissionName = transmissionName;
	}
	
	public static Map<String, String> transmission(){
		Map<String, String> transmissionList = new TreeMap<String, String>();
		for (TransmissionEnum i : TransmissionEnum.values()) {
			transmissionList.put(i.toString(), i.transmissionName);
		}
		return transmissionList;
	}
}
