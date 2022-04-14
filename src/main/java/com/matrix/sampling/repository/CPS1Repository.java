package com.matrix.sampling.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.matrix.sampling.model.CPS;

@Repository
public interface CPS1Repository extends JpaRepository<CPS, Long> {
	
	
	@Query(value = "FROM CPS WHERE BA  like %?1%")
	List<CPS> getCPSByBA(String ba);
	
	@Query("from CPS where id=?1")
	Optional<CPS> findById(Long id);



}
