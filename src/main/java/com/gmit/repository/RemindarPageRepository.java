package com.gmit.repository;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.gmit.model.ReminderPageModel;



public interface RemindarPageRepository extends CrudRepository<ReminderPageModel, Integer> {
	
	@Query(value="SELECT * FROM reminder_page_model WHERE reminderdate = :sysDate",nativeQuery = true)
	public ReminderPageModel findByReminderDate(String sysDate);
	
}
