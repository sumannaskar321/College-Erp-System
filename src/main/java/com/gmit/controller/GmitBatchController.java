package com.gmit.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gmit.model.GmitBatches;
import com.gmit.services.GmitBatchesService;

@Controller
public class GmitBatchController {

	@Autowired
	private GmitBatchesService gmitbatchservice;
	
	
	@RequestMapping(method = RequestMethod.POST,value="/save-batches")
	public void saveBatches(@RequestParam GmitBatches gmitbatch)
	{
		
		gmitbatchservice.saveBatches(gmitbatch);
	}
	
	
	
	
	
	@RequestMapping("/manage-batch")
	public String manageBatchRedirect(HttpSession session)
	{
		ArrayList<GmitBatches>alist=gmitbatchservice.getAllRegisteredBatches();
		if(alist.size()>0)
		{
		session.setAttribute("b", alist);
		}
		return "batch";
	}
	
	
	@RequestMapping(method=RequestMethod.POST ,value="/batch-save")
	public String saveBatchDetails(HttpSession session, GmitBatches batches)
	{
		
		gmitbatchservice.saveBatches(batches);
		
		ArrayList<GmitBatches> alist =gmitbatchservice.getAllRegisteredBatches();
		session.setAttribute("b", alist);
		
		return "batch";
		
	}
	
	@RequestMapping("/remove-batch{id}")
	public String deleteBatchbyId(@RequestParam int id,HttpSession session)
	{
		gmitbatchservice.delBatchById(id);
		
		ArrayList<GmitBatches> alist =gmitbatchservice.getAllRegisteredBatches();
		session.setAttribute("b", alist);
		return "batch";
		
	}
}
