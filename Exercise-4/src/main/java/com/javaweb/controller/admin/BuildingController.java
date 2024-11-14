package com.javaweb.controller.admin;



import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.javaweb.enums.DistrictEnum;
import com.javaweb.enums.TypeCodeEnum;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.service.IUserService;

@Controller(value="buildingControllerOfAdmin")
public class BuildingController {
	
	@Autowired
	private IUserService userService;
	
	@RequestMapping(value="/admin/building-list", method=RequestMethod.GET)
	public ModelAndView buildingList(@ModelAttribute BuildingSearchRequest buildingSearchRequest, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/building/list");
		mav.addObject("modelSearch", buildingSearchRequest);
		
		//lay data
		List<BuildingSearchResponse> responseList = new ArrayList<BuildingSearchResponse>();
		BuildingSearchResponse item1 = new BuildingSearchResponse();
		item1.setId((long) 3);
		item1.setName("ABCD Tower");
		item1.setAddress("Đường Vĩnh Viễn, Quận 10");
		item1.setNumberOfBasement((long) 1);
		item1.setManagerName("Anh Long");
		item1.setManagerPhone("08980");
		item1.setRentArea("100,200");		
		responseList.add(item1);
		
		BuildingSearchResponse item2 = new BuildingSearchResponse();
		item2.setId((long) 5);
		item2.setName("ABCD Tower");
		item2.setAddress("Đường Vĩnh Viễn, Quận 10");
		item2.setNumberOfBasement((long) 1);
		item2.setManagerName("Anh Long");
		item2.setManagerPhone("08980");
		item2.setRentArea("100,200");		
		responseList.add(item2);
		//lay data xong
		
		//hien thi danh sach toa nha
		mav.addObject("buildingList", responseList);
		
		//hien thi danh sach nhan vien
		mav.addObject("listStaffs", userService.getStaffs());
		
		//hien thi danh sach quan
		mav.addObject("districts", DistrictEnum.district());
		
		//hien thi cac checkbox typecode
		mav.addObject("typeCodes", TypeCodeEnum.typeCode());
		return mav;
	}
	
	@RequestMapping(value="/admin/building-edit", method=RequestMethod.GET)
	public ModelAndView buildingEdit(@ModelAttribute BuildingDTO buildingDTO, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/building/edit");
		mav.addObject("districts", DistrictEnum.district());
		mav.addObject("typeCodes", TypeCodeEnum.typeCode());
		mav.addObject("buildingEdit", buildingDTO);
		return mav;
	}
	
	@RequestMapping(value="/admin/building-edit-{id}", method=RequestMethod.GET)
	public ModelAndView buildingEdit(@PathVariable("id") Long id, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/building/edit");
		
		//lay data theo id
		BuildingDTO buildingDTO = new BuildingDTO();
		buildingDTO.setId(id);
		buildingDTO.setName("ABCD Tower");
		//lay data xong
		
		mav.addObject("districts", DistrictEnum.district());
		mav.addObject("typeCodes", TypeCodeEnum.typeCode());
		mav.addObject("buildingEdit", buildingDTO);
		return mav;
	}
}