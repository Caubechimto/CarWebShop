package com.javaweb.repository.custom.impl;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Repository;

import com.javaweb.entity.CarEntity;
import com.javaweb.model.dto.CarDTO;
import com.javaweb.model.request.CarSearchRequest;
import com.javaweb.repository.CarRepository;
import com.javaweb.utils.NumberUtils;
import com.javaweb.utils.StringUtils;

@Repository
public class CarRepositoryImpl implements CarRepository{
	
	@PersistenceContext
	private EntityManager entityManager;
	
	public static void buildQuery(CarSearchRequest carSearchRequest, StringBuilder where) {
		if (StringUtils.check(carSearchRequest.getName())) {
			where.append("AND c.name LIKE '%" + carSearchRequest.getName() + "%' ");
		}
		if (StringUtils.check(carSearchRequest.getModel())) {
			where.append("AND c.model LIKE '%" + carSearchRequest.getModel() + "%' ");
		}
		if (NumberUtils.check(carSearchRequest.getBrand())) {
			where.append("AND c.brand_id = " + carSearchRequest.getBrand() + " ");
		}
		if (NumberUtils.check(carSearchRequest.getSeat())) {
			where.append("AND c.seat = " + carSearchRequest.getSeat() + " ");
		}
		if (StringUtils.check(carSearchRequest.getTransmission())) {
			where.append("AND c.transmission LIKE '%" + carSearchRequest.getTransmission() + "%' ");
		}
		if (NumberUtils.check(carSearchRequest.getYear())) {
			where.append("AND c.year = " + carSearchRequest.getYear() + " ");
		}
		if (NumberUtils.check(carSearchRequest.getPriceFrom())) {
			where.append("AND c.price >= " + carSearchRequest.getPriceFrom() + " ");
		}
		if (NumberUtils.check(carSearchRequest.getPriceTo())) {
			where.append("AND c.price <= " + carSearchRequest.getPriceTo() + " ");
		}
		if (StringUtils.check(carSearchRequest.getEngine())) {
			where.append("AND c.engine LIKE '%" + carSearchRequest.getEngine() + "%' ");
		}
		if (StringUtils.check(carSearchRequest.getFuel())) {
			where.append("AND c.fuel LIKE '%" + carSearchRequest.getFuel() + "%' ");
		}
		if (NumberUtils.check(carSearchRequest.getAirbag())) {
			where.append("AND c.airbag = " + carSearchRequest.getAirbag() + " ");
		}
		if (StringUtils.check(carSearchRequest.getFuel())) {
			where.append("AND c.consumption LIKE '%" + carSearchRequest.getConsumption() + "%' ");
		}
		if (StringUtils.check(carSearchRequest.getStatus())) {
			where.append("AND c.status LIKE '%" + carSearchRequest.getStatus() + "%' ");
		}
		if (StringUtils.check(carSearchRequest.getOrigin())) {
			where.append("AND c.origin LIKE '%" + carSearchRequest.getOrigin() + "%' ");
		}
	}
	
	@Override
	public List<CarEntity> findCars(CarSearchRequest carSearchRequest) {
		StringBuilder sql = new StringBuilder("SELECT * FROM cars c ");
		StringBuilder where = new StringBuilder("Where 1 = 1 ");
		buildQuery(carSearchRequest, where);
		sql.append(where);
		System.out.println(sql.toString());
		Query query = entityManager.createNativeQuery(sql.toString(), CarEntity.class);
		return query.getResultList();
	}

	@Override
	public void deleteAllInBatch() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteInBatch(Iterable<CarEntity> entities) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<CarEntity> findAll() {
		String sql = "SELECT * FROM cars";
		Query query = entityManager.createNativeQuery(sql, CarEntity.class);
		return query.getResultList();
	}

	@Override
	public List<CarEntity> findAll(Sort sort) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends CarEntity> List<S> findAll(Example<S> example) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends CarEntity> List<S> findAll(Example<S> example, Sort sort) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CarEntity> findAllById(Iterable<Integer> ids) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void flush() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public CarEntity getOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends CarEntity> List<S> saveAll(Iterable<S> entities) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends CarEntity> S saveAndFlush(S entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Page<CarEntity> findAll(Pageable arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void delete(CarEntity arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll(Iterable<? extends CarEntity> arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteById(Integer arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean existsById(Integer arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Optional<CarEntity> findById(Integer arg0) {
		// TODO Auto-generated method stub
		return Optional.empty();
	}

	@Override
	public <S extends CarEntity> S save(S arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends CarEntity> long count(Example<S> arg0) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public <S extends CarEntity> boolean exists(Example<S> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public <S extends CarEntity> Page<S> findAll(Example<S> arg0, Pageable arg1) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends CarEntity> Optional<S> findOne(Example<S> arg0) {
		// TODO Auto-generated method stub
		return Optional.empty();
	}

	@Override
	public CarEntity find(Integer id) {
		String sql = "SELECT * FROM cars c WHERE c.id = " + id;
		Query query = entityManager.createNativeQuery(sql, CarEntity.class);
		return (CarEntity)query.getSingleResult();
	}
}
