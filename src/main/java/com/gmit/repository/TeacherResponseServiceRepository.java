package com.gmit.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.gmit.model.TeacherResponseModel;

public interface TeacherResponseServiceRepository extends CrudRepository<TeacherResponseModel, Integer> {

	List<TeacherResponseModel> findByStatus(String status);
}
