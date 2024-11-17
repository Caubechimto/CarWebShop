package com.javaweb.controller.admin;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.javaweb.enums.FuelEnum;
import com.javaweb.enums.ModelEnum;
import com.javaweb.enums.StatusEnum;
import com.javaweb.enums.TransmissionEnum;
import com.javaweb.model.dto.CarDTO;
import com.javaweb.model.request.CarSearchRequest;
import com.javaweb.model.response.CarSearchResponse;
import com.javaweb.service.IBrandService;
import com.javaweb.service.ICarService;

@Controller(value="carControllerOfAdmin")
public class CarController {
	
	@Autowired
	private IBrandService brandService;
	
	@Autowired
	private ICarService carService;
	
	@RequestMapping(value="/admin/car-list", method=RequestMethod.GET)
	public ModelAndView carList(@ModelAttribute CarSearchRequest carSearchRequest, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/car/list");
		mav.addObject("modelSearch", carSearchRequest);
		List<CarSearchResponse> responseList = carService.findCars(carSearchRequest);
		mav.addObject("carList", responseList);
		mav.addObject("models", ModelEnum.model());
		mav.addObject("brands", brandService.getBrands());
		mav.addObject("transmissions", TransmissionEnum.transmission());
		mav.addObject("fuels", FuelEnum.fuel());
		mav.addObject("status", StatusEnum.status());
		return mav;
	}
	
	@RequestMapping(value="/admin/car-edit", method=RequestMethod.GET)
	public ModelAndView carEdit(@ModelAttribute CarDTO carDTO, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/car/edit");
		mav.addObject("models", ModelEnum.model());
		mav.addObject("brands", brandService.getBrands());
		mav.addObject("transmissions", TransmissionEnum.transmission());
		mav.addObject("fuels", FuelEnum.fuel());
		mav.addObject("status", StatusEnum.status());
		mav.addObject("carEdit", carDTO);
		return mav;
	}
	
	@RequestMapping(value="/admin/car-edit-{id}", method=RequestMethod.GET)
	public ModelAndView carEdit(@PathVariable("id") Integer id, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/car/edit");
		CarDTO carDTO = carService.findById(id);
		mav.addObject("models", ModelEnum.model());
		mav.addObject("brands", brandService.getBrands());
		mav.addObject("transmissions", TransmissionEnum.transmission());
		mav.addObject("fuels", FuelEnum.fuel());
		mav.addObject("status", StatusEnum.status());
		mav.addObject("carEdit", carDTO);
		return mav;
	}
}