package com.javaweb.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="brands")
public class BrandEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="name")
	private String name;
	
	@OneToMany(mappedBy = "id", fetch = FetchType.LAZY)
	private List<CarEntity> cars = new ArrayList<CarEntity>();
	
	public List<CarEntity> getCars() {
		return cars;
	}

	public void setCars(List<CarEntity> cars) {
		this.cars = cars;
	}

	public int getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
