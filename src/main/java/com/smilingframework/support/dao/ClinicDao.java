package com.smilingframework.support.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;

import com.smilingframework.dao.base.BaseJpaRepository;
import com.smilingframework.support.model.sys.Clinic;

public interface ClinicDao extends BaseJpaRepository<Clinic, String> {

	public List<Clinic> findByUserId(String userId);
	
	@Query("select count(a) from Clinic a where userId = ?1 ")
	public int clinicCount(String userId);
}
