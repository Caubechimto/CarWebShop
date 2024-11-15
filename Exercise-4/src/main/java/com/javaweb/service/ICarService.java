package com.javaweb.service;

import java.util.List;

import com.javaweb.entity.CarEntity;
import com.javaweb.model.dto.CarDTO;
import com.javaweb.model.request.CarSearchRequest;
import com.javaweb.model.response.CarSearchResponse;

public interface ICarService {
	List<CarSearchResponse> findCars(CarSearchRequest carSearchRequest);
	CarDTO findById(Integer id);
	CarEntity find(Integer id);
}