package com.gmit.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gmit.model.CdcModel;
import com.gmit.services.CdcService;
//import com.gmit.services.StudentApplyService;


@Controller
public class CdcNoticeController {
	
	@Autowired
	private CdcService cds;
	
//	@Autowired
//	private StudentApplyService sas;
	
	
	@RequestMapping("/post-notice")
	public String CdcNot()
	{
		return "postCdcNotice";
	}
	
	@RequestMapping(method=RequestMethod.POST , value="/cdcnot")
	public String addCdcModel (CdcModel cnm)
	{
		System.out.println("INSIDE Controller of reg emploYEE");
		cnm = cds.addCdcModel(cnm);
		
		return "homepage";

	}
	
	//For view all notice values come from CdcService service class
	@RequestMapping("/cdc-view-notice")		//'cdcviewplacementnotices' it's before
	public String cdcViewNotices(HttpSession session,HttpServletRequest request)
	{
		ArrayList<CdcModel> cdcm =cds.getAllNotices();
		request.setAttribute("notices", cdcm);
		//System.out.println(cdcm.size());
		return "cdcviewnotice"; 	//OUTPUT IN THIS .JSP PAGE
		
	}
	
	//For Delete particular a notice values come from cdcviewnotice.jsp, method handle from CdcService service class
	@RequestMapping(value="/delete-notice{notice_id}")
	public String deleteNotice(@RequestParam int notice_id, HttpServletRequest request)
	{
		System.out.println("idk");
		System.out.println(notice_id);
		
		cds.deleteNotice(notice_id);
		ArrayList<CdcModel> afterDelcdcm =cds.getAllNotices();
		request.setAttribute("notices", afterDelcdcm);
		System.out.println("j");
		return "cdcviewnotice";		//OUTPUT IN THIS .JSP PAGE
	}
	
	//CONTROLE COMES FROM cdcviewnotice.jsp page edit option
	@RequestMapping("/update-notice{notice_id}")
	public String updateNotice(@RequestParam int notice_id, HttpServletRequest request)
	{
		CdcModel cdcnotice = cds.findOne(notice_id);	//FINDING NOTICE USING NOTICE_ID
		request.setAttribute("notice", cdcnotice);
		return "updateCdcNotice"; 	//OUTPUT IN THIS .JSP PAGE 
	}
	
	//CONTROLE COMES FROM updateCdcNotice.jsp PAGE-> returns a CdcModel Object
	@RequestMapping(value="/editNotice-save",method = RequestMethod.POST)
	public String updateNoticeSave(CdcModel cdcnotice, HttpServletRequest request)
	{	
		/*
		CdcModel cdcnotice1 = cds.findOne(cdcnotice.getNotice_id());
		
		cdcnotice1.setCompany_name(cdcnotice.getCompany_name());
		cdcnotice1.setJob_desc(cdcnotice.getJob_desc());
		cdcnotice1.setCampus_selection(cdcnotice.getCampus_selection());
		cdcnotice1.setDate(cdcnotice.getDate());
		cdcnotice1.setStart_time(cdcnotice.getStart_time());
		cdcnotice1.setEnd_time(cdcnotice.getEnd_time());
		cdcnotice1.setVenue(cdcnotice.getVenue());
		*/
		cds.addCdcModel(cdcnotice); 	//Add Cdcmodel into repo 
		ArrayList<CdcModel> aftereDITcdcm =cds.getAllNotices();		//For get all notices from repo or db
		request.setAttribute("notices", aftereDITcdcm);
		return "cdcviewnotice";		//OUTPUT IN THIS .JSP PAGE
	}

	
	/*	@RequestMapping("/cdcstudsel")
	public String cdcstud(HttpSession session)
	{
		ArrayList<CdcModel> cdcm= cds.getAllNotices();
		ArrayList<StudentApplyModel> cdd = sas.getAllNotices();
		
		session.setAttribute("a", cdcm);
		session.setAttribute("b", cdd);
		
		return "cdcselective.jsp";
	} */
}
