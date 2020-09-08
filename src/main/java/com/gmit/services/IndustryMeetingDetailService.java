package com.gmit.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.IndustryMeetingDetailModel;
import com.gmit.repository.IndustryMeetingDetailRepository;



@Service
public class IndustryMeetingDetailService {
	@Autowired
	private IndustryMeetingDetailRepository p1robj;
	public IndustryMeetingDetailModel addIndustryInteractionRecord(IndustryMeetingDetailModel obj)
	{
		System.out.println("inside addIndustryInteractionRecord method");
		obj=p1robj.save(obj);
			
		return obj;
	}
	
	public ArrayList<IndustryMeetingDetailModel> getAllDetails()
	{
		ArrayList<IndustryMeetingDetailModel> list = new ArrayList<IndustryMeetingDetailModel>();
		p1robj.findAll().forEach(list ::add);
		return list;
	}

	public void deleteNoticeList(int eventid)
	{
		p1robj.deleteById(eventid);
	}
}
