package com.matrix.sampling.service;

import java.util.List;
import java.util.Optional;

import com.matrix.sampling.model.CPS;

public interface CPS1Service {
	
	
	public CPS saveCPS1(CPS cps1);

	List<CPS> getCPSByBA(String ba);
	
	Optional<CPS> getCPSByID(Long id);

}
