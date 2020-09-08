package com.gmit.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;

import com.gmit.model.StudentApplyModel;
import com.gmit.services.StudentApplyService;



@Controller
public class StudentApplyController {
	@Autowired
	private StudentApplyService s;
	
	
	
	
	@RequestMapping(method= {RequestMethod.POST,RequestMethod.GET}, value="/studapply")
	public ModelAndView addStudentApplyModel (  StudentApplyModel sam )
	{	
				
		sam=s.addStudentApplyModel(sam);
		
		ModelAndView mv = new ModelAndView();
		
		
		mv.addObject("regsuccessmsg", "THANKS FOR REG..NOW LOGIN");
		mv.setViewName("CdcNotice.jsp");
		
		return mv;
		
					
	}
		

		
		
}
