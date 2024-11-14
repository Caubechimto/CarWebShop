package com.javaweb.api.admin;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.javaweb.model.dto.BuildingDTO;

@RestController(value="buildingAPIOfAdmin")
@RequestMapping("/api/building")
public class BuildingAPI {
	
	@PostMapping
	public BuildingDTO AddOrUpdateBuilding(@RequestBody BuildingDTO buildingDTO) {
		//xuong db de update hoac them moi
		return buildingDTO;
	}
	
	@DeleteMapping("/{ids}")
	public void deleteBuilding(@PathVariable ArrayList<Long> ids) {
		//xuong db de xoa building theo id
		System.out.println("OK");
	}
}
