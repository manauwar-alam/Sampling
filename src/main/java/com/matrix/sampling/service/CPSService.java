package com.matrix.sampling.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;

import com.matrix.sampling.model.CPS;




public interface CPSService {
	
	
	CPS createCPS(CPS cps);

	CPS updateCPS(CPS cps);

    List < CPS > getAllCPS();

    Optional<CPS> getCPSById(long id);
    
    List<CPS> getByBA(String ba);

	void deleteCPS(CPS cps);
	
	Page<CPS> findPaginated(int pageNo, int pageSize, String sortField, String sortDirection);
		

}
