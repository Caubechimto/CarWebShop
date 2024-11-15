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
	public ModelAndView buildingList(@ModelAttribute CarSearchRequest carSearchRequest, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/car/list");
		mav.addObject("modelSearch", carSearchRequest);
		
		//lay data
		List<CarSearchResponse> responseList = carService.findCars(carSearchRequest);
		
		//hien thi danh sach toa nha
		mav.addObject("carList", responseList);

		//hien thi danh sach kieu dang xe
		mav.addObject("models", ModelEnum.model());
		
		//hien thi danh sach hang xe
		mav.addObject("brands", brandService.getBrands());
		
		//hien thi danh sach hop so
		mav.addObject("transmissions", TransmissionEnum.transmission());
		
		//hien thi danh sach nhien lieu
		mav.addObject("fuels", FuelEnum.fuel());
		
		//hien thi tinh trang moi cu
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
		
		//lay data theo id
		CarDTO carDTO = carService.findById(id);
		//lay data xong
		
		mav.addObject("models", ModelEnum.model());
		mav.addObject("brands", brandService.getBrands());
		mav.addObject("transmissions", TransmissionEnum.transmission());
		mav.addObject("fuels", FuelEnum.fuel());
		mav.addObject("status", StatusEnum.status());
		mav.addObject("carEdit", carDTO);
		return mav;
	}
}