package com.gmit.repository;

import org.springframework.data.repository.CrudRepository;

import com.gmit.model.StudentRegmodel;

public interface StudservRep extends CrudRepository<StudentRegmodel, Integer> {

}
