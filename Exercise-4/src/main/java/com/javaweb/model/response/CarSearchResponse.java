package com.javaweb.model.response;

public class CarSearchResponse extends ResponseDTO{
	private Integer id;
	private String name;
	private String model;
	private String brand;
	private Integer seat;
	private String transmission;
	private Integer year;
    private String price;
    private String engine;
    private String fuel;
    private Integer airbag;
    private String consumption;
    private String status;
    private String origin;
    private String imageURL;
    private String description;
    
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public void setTransmission(String transmission) {
		this.transmission = transmission;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public void setFuel(String fuel) {
		this.fuel = fuel;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public Integer getSeat() {
		return seat;
	}
	public void setSeat(Integer seat) {
		this.seat = seat;
	}
	public Integer getYear() {
		return year;
	}
	public void setYear(Integer year) {
		this.year = year;
	}
	public String getEngine() {
		return engine;
	}
	public void setEngine(String engine) {
		this.engine = engine;
	}
	public Integer getAirbag() {
		return airbag;
	}
	public void setAirbag(Integer airbag) {
		this.airbag = airbag;
	}
	public String getConsumption() {
		return consumption;
	}
	public void setConsumption(String consumption) {
		this.consumption = consumption;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getImageURL() {
		return imageURL;
	}
	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getBrand() {
		return brand;
	}
	public String getTransmission() {
		return transmission;
	}
	public String getPrice() {
		return price;
	}
	public String getFuel() {
		return fuel;
	}
    
}