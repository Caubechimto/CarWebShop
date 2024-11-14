package com.javaweb.enums;

import java.util.Map;
import java.util.TreeMap;

public enum TypeCodeEnum {
    TANG_TRET ("Tầng Trệt "),
    NGUYEN_CAN ("Nguyên Căn "),
    NOI_THAT ("Nội Thất ");
	
	private final String typeCodeName;
	
	TypeCodeEnum(String typeCodeName) {
		this.typeCodeName = typeCodeName;
	}
	
	public static Map<String, String> typeCode(){
		Map<String, String> typeCodeMap = new TreeMap<String, String>();
		for (TypeCodeEnum i : TypeCodeEnum.values()) {
			typeCodeMap.put(i.toString(), i.typeCodeName);
		}
		return typeCodeMap;
	}
}
