package com.gmit.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gmit.model.Placementmodel;
import com.gmit.services.Placementservice;


// FOR CONTROL 'VIEW PLACEMENT NOTICE','POST PLACEMENT NOTICE','EDIT ON VIEW PAGE','DELETE ON VIEW PAGE'
@Controller
public class PlacementController {
	
	@Autowired
	private Placementservice placementserviceobject;
	
	//FOR OPEN ->placementDetails page on headermenu option
	@RequestMapping("/headermenu-placement-section")
	public String openPlacementOption() 
	{														//PLACEMENT OPTION ON HEADERMENU
		return "placementDetails";
	}
	
	@RequestMapping("/post-placement-notices")
	public String postPlacementNotices()
	{																			//PLACEMENT a-HREF
		return "placementnoticepublish";
	}
	
	@RequestMapping(method = RequestMethod.POST , value="/placementnoticepublish")
	public String savePlacementNoticeDetailsIntoDb(Placementmodel placement)
	{																				//PLACEMENT SAVE INTO DB
		placement=placementserviceobject.saveDet(placement);
		
		return "homepage";
	}
	
	
	@RequestMapping("/viewpostedplacementnoticedetails")
	public String viewPostedPlacementNoticeDetails(HttpServletRequest request)
	{
		ArrayList<Placementmodel> pm = placementserviceobject.getAll();				//PLACEMENT NOTICE VIEW
		request.setAttribute("abc", pm);
		//System.out.println(pm.get(0).getCompanyjobdescription());
		return "showpostedplacementdetails";  
	}
	
	
	@RequestMapping("/edit-placementNotices{placementCompanyName}{campusSelection}{companyjobdescription}{serial}{starttime}{endtime}{lastdate}{visitdate}{venue}")
	public String UpdateDetail(HttpServletRequest request,@RequestParam String placementCompanyName, 
			@RequestParam String campusSelection, @RequestParam String companyjobdescription ,
			@RequestParam String starttime, @RequestParam String endtime, @RequestParam int serial, 
			@RequestParam String lastdate, @RequestParam String visitdate , @RequestParam String venue )
	{
		System.out.println(visitdate);
		request.setAttribute("placementCompanyName",placementCompanyName);
		request.setAttribute("campusSelection", campusSelection);
		request.setAttribute("companyjobdescription", companyjobdescription);
		request.setAttribute("serial", serial);
		request.setAttribute("starttime",starttime);							//PLACEMENT DETAILS EDIT BY TEACHER SHOW VALUES IN JSP FIELDS
		request.setAttribute("endtime",endtime);
		request.setAttribute("lastdate", lastdate);
		request.setAttribute("visitdate",visitdate);
		request.setAttribute("venue",venue);
		
		return "placementnoticeupdate";
		
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/placementnoticeupdate")
	public String UpdateDetails(HttpServletRequest request, @RequestParam String placementCompanyName, 
			@RequestParam String campusSelection, @RequestParam String companyjobdescription ,
			@RequestParam String startTime, @RequestParam String endTime, @RequestParam int serial, 
			@RequestParam String lastdateofApply, @RequestParam String visitDate , @RequestParam String venue)
	{
		Placementmodel place = placementserviceobject.findPlacementDetails(serial);
		
		
		
		place.setCampusSelection(campusSelection);
		place.setCompanyjobdescription(companyjobdescription);
		place.setEndTime(endTime);
		place.setLastdateofApply(lastdateofApply);
		place.setPlacementCompanyName(placementCompanyName);
		place.setPlacementNoticeId(serial);						//PLACEMENT DETAILS UPDATE PROCESS
		place.setStartTime(startTime);
		place.setVenue(venue);
		place.setVisitDate(visitDate);
		
		place=placementserviceobject.saveDet(place);
		
		ArrayList<Placementmodel> pm = placementserviceobject.getAll();
		request.setAttribute("abc", pm);
		System.out.println(pm.get(0).getCompanyjobdescription());
		return "showpostedplacementdetails";
	}
	
	
	@RequestMapping("/delete-placementNotices{serial}")
	public String DeleteByPlacementID(@RequestParam int serial,HttpServletRequest request)
	{
		placementserviceobject.deletePlacementList(serial);
		ArrayList<Placementmodel> pm = placementserviceobject.getAll();   //PLACEMENT NOTICE DELETE USING PLACEMENT_ID
		request.setAttribute("abc", pm);
		System.out.println(pm.get(0).getCompanyjobdescription());
		return "showpostedplacementdetails";
		
	}
	
	@RequestMapping("/delete-placement-notice{id}")
	public String deletePlacementFromAdmin(@RequestParam int id, HttpServletRequest request)
	{
		placementserviceobject.deletePlacementList(id);
		ArrayList<Placementmodel> placementnotice = placementserviceobject.getAll();
		request.setAttribute("placementnotice", placementnotice);
		return "cdcactivity";
	}

	
	
}

