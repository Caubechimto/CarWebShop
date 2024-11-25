package com.javaweb.converter;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.javaweb.entity.CarEntity;
import com.javaweb.model.dto.CarDTO;
import com.javaweb.model.response.CarSearchResponse;

@Component
public class CarConverter {
	@Autowired
	private ModelMapper modelMapper;
	
	public CarSearchResponse fromCEToCSR(CarEntity carEntity) {
		CarSearchResponse result = modelMapper.map(carEntity, CarSearchResponse.class);
		result.setBrand(carEntity.getBrandEntity().getName());
		if (carEntity.getTransmission().equals("TU_DONG")) {
			result.setTransmission("Tự động");
		} else {
			result.setTransmission("Số sàn");
		}
		if (carEntity.getPrice() != null && carEntity.getPrice() != 0) {
			result.setPrice(carEntity.getPrice() + " triệu VNĐ");				
		}
		if (carEntity.getFuel().equals("DIEN")) {
			result.setFuel("Điện");
		} else if (carEntity.getFuel().equals("XANG")) {
			result.setFuel("Xăng");
		} else {
			result.setFuel("Dầu");
		}
		if (carEntity.getStatus().equals("NEM")) {
			result.setStatus("Mới");
		} else {
			result.setStatus("Cũ");
		}
		return result;
	}
	
	public CarDTO fromCEToCDTO(CarEntity carEntity) {
		CarDTO result = modelMapper.map(carEntity, CarDTO.class);
		result.setBrand_id(carEntity.getBrandEntity().getId());
		return result;
	}
}
