package com.javaweb.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaweb.entity.BrandEntity;
import com.javaweb.repository.BrandRepository;
import com.javaweb.service.IBrandService;

@Service
public class BrandService implements IBrandService {
	
	@Autowired
	private BrandRepository brandRepository;
	
	@Override
	public Map<Integer, String> getBrands() {
		Map<Integer, String> brandList = new HashMap<Integer, String>();
		List<BrandEntity> brands = brandRepository.findAll();
		for (BrandEntity i : brands) {
			brandList.put(i.getId(), i.getName());
		}
		return brandList;
	}

	@Override
	public BrandEntity getById(Integer id) {
		BrandEntity result = brandRepository.getOne(id);
		return result;
	}

}
