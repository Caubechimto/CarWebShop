package com.javaweb.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.javaweb.entity.BrandEntity;

public interface BrandRepository extends JpaRepository<BrandEntity, Integer> {
}