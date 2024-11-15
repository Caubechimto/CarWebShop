package com.javaweb.enums;

import java.util.Map;
import java.util.TreeMap;

public enum ModelEnum {
	HATCHBACK ("Hatchback"),
	MPV ("MPV"),
	PICKUP ("Pickup"),
	SEDAN ("Sedan"),
	SUV ("SUV"),
	;
	
	private final String modelName;
	
	ModelEnum(String modelName) {
		this.modelName = modelName;
	}
	
	public static Map<String, String> model(){
		Map<String, String> modelList = new TreeMap<String, String>();
		for (ModelEnum i : ModelEnum.values()) {
			modelList.put(i.toString(), i.modelName);
		}
		return modelList;
	}
}
