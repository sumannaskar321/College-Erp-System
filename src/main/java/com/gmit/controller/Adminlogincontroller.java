package com.gmit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gmit.model.adminmodel;
import com.gmit.services.Adminservice;

@Controller
public class Adminlogincontroller {

	@Autowired
	private Adminservice adminser;
	
	@RequestMapping(method=RequestMethod.POST, value="/adminlogin")
	public String findadmin(adminmodel adminmodels,HttpServletRequest request )
	{
		adminmodel  adminmode= adminser.findByUsername(adminmodels.getUsername());
		System.out.println("A");
		
		if(adminmode.getUsername()==null)
		{
			request.setAttribute( "errormsg","INVALID username or password!" );
			return "adminlogin";
		}
		else
		if(adminmode.getUsername().equals(adminmodels.getUsername()))
		{
			System.out.println("c");
			if(adminmode.getPassword().equals(adminmodels.getPassword()))
			{
				HttpSession session = request.getSession(false);
				session.setAttribute("admin", adminmodels);
				return "adminpanel";
			}
			else
				return "adminlogin";
		}
		else
			return "adminlogin";
	}
}
