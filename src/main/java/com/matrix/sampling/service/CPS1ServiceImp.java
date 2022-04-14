package com.matrix.sampling.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.matrix.sampling.model.CPS;
import com.matrix.sampling.repository.CPS1Repository;



@Service
public class CPS1ServiceImp implements CPS1Service {
	
	@Autowired
	CPS1Repository dao;

	@Override
	public CPS saveCPS1(CPS cps1) {
		
		return dao.save(cps1);
	}
	
	@Override
	public List<CPS> getCPSByBA(String ba)  {
		
		return dao.getCPSByBA(ba);
	}

	@Override
	public Optional<CPS> getCPSByID(Long id) {
		
		return dao.findById(id);
	}

}
