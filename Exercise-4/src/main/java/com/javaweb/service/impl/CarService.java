package com.javaweb.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	@Override
	public List<CarSearchResponse> findCars(CarSearchRequest carSearchRequest) {
		List<CarEntity> cars = carRepository.findCars(carSearchRequest);
//		List<CarEntity> cars = carRepository.findAll();
		List<CarSearchResponse> result = new ArrayList<CarSearchResponse>();
		for (CarEntity i : cars) {
			CarSearchResponse j = new CarSearchResponse();
			j.setId(i.getId());
			j.setName(i.getName());
			j.setModel(i.getModel());
			j.setBrand(i.getBrandEntity().getName());
			j.setSeat(i.getSeat());
			if (i.getTransmission().equals("TU_DONG")) {
				j.setTransmission("Tự động");
			} else {
				j.setTransmission("Số sàn");
			}
			j.setYear(i.getYear());
			if (i.getPrice() != null && i.getPrice() != 0) {
				j.setPrice(i.getPrice() + " triệu VNĐ");				
			}
			j.setEngine(i.getEngine());
			if (i.getFuel().equals("DIEN")) {
				j.setFuel("Điện");
			} else if (i.getFuel().equals("XANG")) {
				j.setFuel("Xăng");
			} else {
				j.setFuel("Dầu");
			}
			j.setAirbag(i.getAirbag());
			j.setConsumption(i.getConsumption());
			j.setStatus(i.getStatus().toUpperCase());
			j.setOrigin(i.getOrigin());
			result.add(j);
		}
		return result;
	}
	
	@Override
	public CarDTO findById(Integer id) {
		CarEntity i = carRepository.find(id);
		CarDTO j = new CarDTO();
		j.setId(i.getId());
		j.setName(i.getName());
		j.setModel(i.getModel());
		j.setBrand(i.getBrandEntity().getId());
		j.setSeat(i.getSeat());
		j.setTransmission(i.getTransmission());
		j.setYear(i.getYear());
		j.setPrice(i.getPrice());
		j.setEngine(i.getEngine());
		j.setFuel(i.getFuel());
		j.setAirbag(i.getAirbag());
		j.setConsumption(i.getConsumption());
		j.setStatus(i.getStatus().toUpperCase());
		j.setOrigin(i.getOrigin());
		return j;
	}

	@Override
	public CarEntity find(Integer id) {
		CarEntity result = carRepository.find(id);
		return result;
	}
	
	
}
