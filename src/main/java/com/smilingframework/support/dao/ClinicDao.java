package com.smilingframework.support.dao;

import java.util.List;

import com.smilingframework.dao.base.BaseJpaRepository;
import com.smilingframework.support.model.sys.Clinic;

public interface ClinicDao extends BaseJpaRepository<Clinic, String> {

	public List<Clinic> findByUserId(String userId);
}
