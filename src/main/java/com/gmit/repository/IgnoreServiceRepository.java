package com.gmit.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.gmit.model.Ignore1;

@Repository
public interface IgnoreServiceRepository extends CrudRepository<Ignore1, Integer> {

}
