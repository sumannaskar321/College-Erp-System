package com.gmit.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.gmit.model.InternshipDetailsSave;

public interface InternshipRepository extends CrudRepository<InternshipDetailsSave, Integer> {
	
	List<InternshipDetailsSave> findByStatus(String status);

}
