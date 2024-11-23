package com.javaweb.controller.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.javaweb.converter.CarConverter;
import com.javaweb.entity.CarEntity;
import com.javaweb.enums.FuelEnum;
import com.javaweb.enums.ModelEnum;
import com.javaweb.enums.StatusEnum;
import com.javaweb.enums.TransmissionEnum;
import com.javaweb.model.request.CarSearchRequest;
import com.javaweb.model.response.CarSearchResponse;
import com.javaweb.service.IBrandService;
import com.javaweb.service.ICarService;

@Controller(value = "homeControllerOfWeb")
public class HomeController {
	
	@Autowired
	private ICarService carService;
	
	@Autowired
	private ModelMapper modelMapper;
	
	@Autowired
	private CarConverter carConverter;
	
	@Autowired
	private IBrandService brandService;

	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("web/home");
		CarEntity car1 = carService.find(1);
		CarEntity car2 = carService.find(2);
		CarEntity car3 = carService.find(3);
		mav.addObject("carDetail1", car1);
		mav.addObject("carDetail2", car2);
		mav.addObject("carDetail3", car3);
		return mav;
	}
	
	@GetMapping(value="/car-detail-{id}")
	public ModelAndView carDetail(@PathVariable Integer id) {
		ModelAndView mav = new ModelAndView("web/detail");
		CarEntity carEntity = carService.find(id);
		CarSearchResponse result = carConverter.fromCEToCSR(carEntity);
		mav.addObject("carDetail", result);
		
		List<CarSearchResponse> allCar = carService.findCars(new CarSearchRequest());
		mav.addObject("allCar", allCar);
		
		return mav;
	}
	
	@GetMapping(value="/so-sanh-{id1}-{id2}")
	public ModelAndView carCompare(@PathVariable Integer id1, @PathVariable Integer id2) {
		ModelAndView mav = new ModelAndView("web/compare");
		CarEntity car1 = carService.find(id1);
		CarSearchResponse result1 = carConverter.fromCEToCSR(car1);
		CarEntity car2 = carService.find(id2);
		CarSearchResponse result2 = carConverter.fromCEToCSR(car2);
		mav.addObject("car1", result1);
		mav.addObject("car2", result2);
		return mav;
	}

    @GetMapping(value="/gioi-thieu")
    public ModelAndView introducce(){
        ModelAndView mav = new ModelAndView("web/introduce");
        return mav;
    }

    @GetMapping(value="/san-pham")
    public ModelAndView carList(@ModelAttribute CarSearchRequest carSearchRequest, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("web/list");
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

    @GetMapping(value="/tin-tuc")
    public ModelAndView news(){
        ModelAndView mav = new ModelAndView("/web/news");
        return mav;
    }

    @GetMapping(value="/lien-he")
    public ModelAndView contact(){
        ModelAndView mav = new ModelAndView("/web/contact");
        return mav;
    }

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView register() {
		ModelAndView mav = new ModelAndView("register");
		return mav;
	}
	
	@RequestMapping(value = "/access-denied", method = RequestMethod.GET)
	public ModelAndView accessDenied() {
		return new ModelAndView("redirect:/login?accessDenied");
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return new ModelAndView("redirect:/trang-chu");
	}
}
