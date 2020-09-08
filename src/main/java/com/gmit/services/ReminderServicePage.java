package com.gmit.services;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.ReminderPageModel;
import com.gmit.repository.RemindarPageRepository;



@Service
public class ReminderServicePage {
	
	@Autowired
	RemindarPageRepository reminderrepositoryobj;
	public ReminderPageModel addreminder(ReminderPageModel remindermodelobj) {
		remindermodelobj=reminderrepositoryobj.save(remindermodelobj);
		return remindermodelobj;
		
	}
	
	public ReminderPageModel findByReminderDate(String sysDate)
	{
		System.out.println("hi");
		return reminderrepositoryobj.findByReminderDate(sysDate);
	}

}
