package com.matrix.sampling.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.matrix.sampling.model.CPS;

@Repository
public interface CPSRepository extends JpaRepository<CPS, Long> {
	
	@Query(value = "FROM CPS WHERE BA  like %?1%")
	List<CPS> findByBA(String bA);
	

	
		
}
