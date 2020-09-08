package com.gmit.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gmit.model.IndustryMeetingDetailModel;
import com.gmit.services.IndustryMeetingDetailService;


@Controller
public class IndustryMeetingDetailController {
	
@Autowired
private IndustryMeetingDetailService p1service;

//FOR Open page-> ActualOutCome(Input Trainer Details Page)
@RequestMapping(method=RequestMethod.POST,value="/control")
public String addInteractionRecord(IndustryMeetingDetailModel page1obj)
{
	System.out.println("inside addInteractionRecord method");
	page1obj=p1service.addIndustryInteractionRecord(page1obj); 	// for save event details in repo/db

	return "ActualOutCome"; 	//Redirection on this ActualOutCome.jsp page
}



@RequestMapping("/view-industry-details")
public String showAllIndustryDetails(HttpServletRequest request)
{
	ArrayList<IndustryMeetingDetailModel> details= p1service.getAllDetails();
	if(details != null)
	{
		request.setAttribute("details", details);
	}
	
	return"IndustryMeetingDetailsList";
}

//For open the page for add new event
@RequestMapping("/cdc-event")
public String cdcEvent()
{
	return "IndustryMeetingDetail";		//OUTPUT page take input and on submit returns IndustryMeetingDetailModel Object
}
	
@RequestMapping("/delete-event-notice{id}")
public String deleteNoticeFromAdmin(@RequestParam int id, HttpServletRequest request)
{
	p1service.deleteNoticeList(id);
	ArrayList<IndustryMeetingDetailModel> details= p1service.getAllDetails();
	request.setAttribute("details", details);
	return "cdcactivity";
}
}
