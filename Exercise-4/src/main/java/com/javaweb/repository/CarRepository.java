package com.javaweb.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.javaweb.entity.CarEntity;
import com.javaweb.model.dto.CarDTO;
import com.javaweb.model.request.CarSearchRequest;

public interface CarRepository extends JpaRepository<CarEntity, Integer>{
	List<CarEntity> findCars(CarSearchRequest carSearchRequest);
	CarEntity find(Integer id);
}
