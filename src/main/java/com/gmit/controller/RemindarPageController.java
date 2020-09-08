package com.gmit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gmit.model.ReminderPageModel;
import com.gmit.services.ReminderServicePage;



@Controller
public class RemindarPageController {
	
	@Autowired
	ReminderServicePage reminderserviceobj;
	
	@RequestMapping(method=RequestMethod.POST,value="/reminder")
	public ModelAndView getreminder( ReminderPageModel reminderobj)
	{
		System.out.println("");
		ModelAndView mv=new ModelAndView();
		reminderobj=reminderserviceobj.addreminder(reminderobj);
		mv.addObject("regsuccessmsg","Reminder Set is Successful!");
		mv.setViewName("ReminderPage");
		return mv;
	}

}
