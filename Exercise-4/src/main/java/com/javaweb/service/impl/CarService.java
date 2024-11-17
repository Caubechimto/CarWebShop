package com.javaweb.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaweb.converter.CarConverter;
import com.javaweb.entity.CarEntity;
import com.javaweb.enums.ModelEnum;
import com.javaweb.model.dto.CarDTO;
import com.javaweb.model.request.CarSearchRequest;
import com.javaweb.model.response.CarSearchResponse;
import com.javaweb.repository.CarRepository;
import com.javaweb.service.ICarService;

@Service
public class CarService implements ICarService{
	
	@Autowired
	private CarRepository carRepository;
	
	@Autowired
	private CarConverter carConverter;
	
	@Override
	public List<CarSearchResponse> findCars(CarSearchRequest carSearchRequest) {
		List<CarEntity> cars = carRepository.findCars(carSearchRequest);
		List<CarSearchResponse> result = new ArrayList<CarSearchResponse>();
		for (CarEntity i : cars) {
			CarSearchResponse j = carConverter.fromCEToCSR(i);
			result.add(j);
		}
		return result;
	}
	
	@Override
	public CarDTO findById(Integer id) {
		CarEntity carEntity = carRepository.find(id);
		CarDTO result = carConverter.fromCEToCDTO(carEntity);
		return result;
	}

	@Override
	public CarEntity find(Integer id) {
		CarEntity result = carRepository.find(id);
		return result;
	}
	
	
}
