package com.gmit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gmit.model.ActualOutComeModel;
import com.gmit.services.ActualOutComeService;



@Controller
public class ActualOutComeController {
	
	@Autowired
	private ActualOutComeService outcomeservice;
	
	@RequestMapping(method=RequestMethod.POST, value="/actualoutcomepage")
	public String addActualOutComeRecord(ActualOutComeModel outcomemodelobj)
	{
		System.out.println("i am in addActualOutComeRecord in controller ");
		outcomemodelobj=outcomeservice.addActualOutComeDetails(outcomemodelobj);
		
		return "ActualOutCome";
	}
//tesing	

}
