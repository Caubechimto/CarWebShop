package com.javaweb.api.admin;

import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.javaweb.entity.CarEntity;
import com.javaweb.model.dto.CarDTO;
import com.javaweb.service.IBrandService;
import com.javaweb.service.ICarService;

@RestController(value="carAPIOfAdmin")
@RequestMapping("/api/car")
@Transactional
public class CarAPI {
	
	@PersistenceContext
	EntityManager entityManager;
	
	@Autowired
	private IBrandService brandService;
	
	@Autowired
	private ICarService carService;
	
	@Autowired
	private ModelMapper modelMapper;
	
	@PostMapping
	public void AddOrUpdateCar(@RequestBody CarDTO carDTO) {
		CarEntity carEntity = modelMapper.map(carDTO, CarEntity.class);
		carEntity.setBrandEntity(brandService.getById(carDTO.getBrand_id()));
		if (carEntity.getId() != null && carEntity.getId() != 0) {
			entityManager.merge(carEntity);
		} else {
			entityManager.persist(carEntity);
		}
	}
	
	@DeleteMapping("/{ids}")
	public void deleteCar(@PathVariable ArrayList<Integer> ids) {
		for (int i : ids) {
			CarEntity car = carService.find(i);
			entityManager.remove(car);
		}
	}
}
