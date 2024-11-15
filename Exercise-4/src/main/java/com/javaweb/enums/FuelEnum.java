package com.javaweb.enums;

import java.util.Map;
import java.util.TreeMap;

public enum FuelEnum {
	XANG ("Xăng"),
	DAU ("Dầu"),
	DIEN ("Điện"),
	;
	
	private final String fuelName;
	
	FuelEnum(String fuelName) {
		this.fuelName = fuelName;
	}
	
	public static Map<String, String> fuel(){
		Map<String, String> fuelList = new TreeMap<String, String>();
		for (FuelEnum i : FuelEnum.values()) {
			fuelList.put(i.toString(), i.fuelName);
		}
		return fuelList;
	}
}
