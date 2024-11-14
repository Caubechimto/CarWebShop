package com.javaweb.enums;

import java.util.Map;
import java.util.TreeMap;

public enum DistrictEnum {
	QUAN_1 ("Quận 1"),
	QUAN_2 ("Quận 2"),
	QUAN_3 ("Quận 3"),
	QUAN_4 ("Quận 4"),
	QUAN_5 ("Quận 5"),
	QUAN_6 ("Quận 6"),
	QUAN_7 ("Quận 7"),
	QUAN_8 ("Quận 8");
	
	private final String districtName;
	
	DistrictEnum(String districtName) {
		this.districtName = districtName;
	}
	
	public static Map<String, String> district(){
		Map<String, String> districtList = new TreeMap<String, String>();
		for (DistrictEnum i : DistrictEnum.values()) {
			districtList.put(i.toString(), i.districtName);
		}
		return districtList;
	}
}
