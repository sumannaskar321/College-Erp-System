package com.gmit.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.gmit.model.GmitBatches;

public interface GmitBatchesRepository extends CrudRepository<GmitBatches, Integer> {
	
	@Query(value="SELECT batches FROM gmitbatches ORDER BY batches DESC LIMIT 5",nativeQuery = true)
	public ArrayList<String> getTop5Batches();
	
	
	@Query(value="SELECT batches FROM gmitbatches ORDER BY batches DESC LIMIT 4",nativeQuery = true)
	public ArrayList<String> getTop4Batches();

}
