package com.javaweb.model.request;

import com.javaweb.model.dto.AbstractDTO;

public class CarSearchRequest extends AbstractDTO {
	private String name;
	private String model;
	private Integer brand;
	private Integer seat;
	private String transmission;
	private Integer year;
	private Integer priceFrom;
	private Integer priceTo;
	private String engine;
	private String fuel;
	private Integer airbag;
	private String consumption;
	private String status;
	private String origin;
	
	public String getName() {
		return name;
	}
	public String getModel() {
		return model;
	}
	public Integer getBrand() {
		return brand;
	}
	public Integer getSeat() {
		return seat;
	}
	public String getTransmission() {
		return transmission;
	}
	public Integer getYear() {
		return year;
	}
	public Integer getPriceFrom() {
		return priceFrom;
	}
	public Integer getPriceTo() {
		return priceTo;
	}
	public String getEngine() {
		return engine;
	}
	public String getFuel() {
		return fuel;
	}
	public Integer getAirbag() {
		return airbag;
	}
	public String getConsumption() {
		return consumption;
	}
	public String getStatus() {
		return status;
	}
	public String getOrigin() {
		return origin;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public void setBrand(Integer brand) {
		this.brand = brand;
	}
	public void setSeat(Integer seat) {
		this.seat = seat;
	}
	public void setTransmission(String transmission) {
		this.transmission = transmission;
	}
	public void setYear(Integer year) {
		this.year = year;
	}
	public void setPriceFrom(Integer priceFrom) {
		this.priceFrom = priceFrom;
	}
	public void setPriceTo(Integer priceTo) {
		this.priceTo = priceTo;
	}
	public void setEngine(String engine) {
		this.engine = engine;
	}
	public void setFuel(String fuel) {
		this.fuel = fuel;
	}
	public void setAirbag(Integer airbag) {
		this.airbag = airbag;
	}
	public void setConsumption(String consumption) {
		this.consumption = consumption;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
}
