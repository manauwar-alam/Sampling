package com.matrix.sampling.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.matrix.sampling.model.CPS;
import com.matrix.sampling.repository.CPSRepository;


@Service
@Transactional
public class CPSServiceImp implements CPSService {
	
	@Autowired
	CPSRepository cpsRepository;

	@Override
	public CPS createCPS(CPS cps) {
		
		return cpsRepository.save(cps);
	}

	@Override
	public CPS updateCPS(CPS cps) {
		
            cpsRepository.save(cps);
            return cps;
	}

	@Override
	public List<CPS> getAllCPS() {
		
		return null;
	}

	@Override
	public Optional <CPS> getCPSById(long id) {
		
		return cpsRepository.findById(id);
	}

	@Override
	public void deleteCPS(CPS cps) {
		
		 cpsRepository.delete(cps);;

	}

	@Override
	public List<CPS> getByBA(String ba) {
		
		return cpsRepository.findByBA(ba);
	}

	@Override
	public Page<CPS> findPaginated(int pageNo, int pageSize, String sortField, String sortDirection) {
		
		Sort sort = sortDirection.equalsIgnoreCase(Sort.Direction.ASC.name()) ? Sort.by(sortField).ascending() : Sort.by(sortField).descending();
		Pageable pageable = PageRequest.of(pageNo -1, pageSize, sort);
		
		return cpsRepository.findAll(pageable);
	}

	
	
	
	

}
