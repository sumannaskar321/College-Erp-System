package com.gmit;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.gmit.model.StudentDetails;



@Transactional
@Repository
public class Customr implements Cust {

    @PersistenceContext
    EntityManager entityManager;

	@Override
	public List<StudentDetails> gender(String query) {

		Query queryy = entityManager.createNativeQuery("SELECT * FROM studentdetails WHERE roll_no='0'",StudentDetails.class);
		System.out.println(queryy.getResultList());
		return queryy.getResultList();
	}
}
