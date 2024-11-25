package com.javaweb.service;

import java.util.Map;

import com.javaweb.entity.BrandEntity;

public interface IBrandService {
	Map<Integer, String> getBrands();
	BrandEntity getById(Integer id);
}
