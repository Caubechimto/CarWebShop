package com.javaweb.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="cars")
public class CarEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="model")
	private String model;
	
	@ManyToOne
	@JoinColumn(name="brand_id")
	private BrandEntity brandEntity;
	
	@Column(name="seat")
	private Integer seat;
	
	@Column(name="transmission")
	private String transmission;
	
	@Column(name="year")
	private Integer year;
	
	@Column(name="price")
	private Integer price;
	
	@Column(name="engine")
	private String engine;
	
	@Column(name="fuel")
	private String fuel;
	
	@Column(name="airbag")
	private Integer airbag;
	
	@Column(name="consumption")
	private String consumption;
	
	@Column(name="status")
	private String status;
	
	@Column(name="origin")
	private String origin;
	
	@Column(name="imageURL")
	private String imageURL;
	
	@Column(name="description")
	private String description;

	public Integer getId() {
		return id;
	}

	public void setBrandEntity(BrandEntity brandEntity) {
		this.brandEntity = brandEntity;
	}

	public BrandEntity getBrandEntity() {
		return brandEntity;
	}

	public String getTransmission() {
		return transmission;
	}

	public Integer getPrice() {
		return price;
	}

	public String getFuel() {
		return fuel;
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

	public void setId(Integer id) {
		this.id = id;
	}

	public void setTransmission(String transmission) {
		this.transmission = transmission;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public void setFuel(String fuel) {
		this.fuel = fuel;
	}

}
