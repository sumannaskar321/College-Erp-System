package com.gmit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JsppageLink {
	
	@RequestMapping("/Sa")
	public String StudApp()
	{
		return "StudentApply";
	}
	
	@RequestMapping("/s")
	public String v()
	{
		return "ViewPostedNotices";
	}
	
	@RequestMapping("/sl")
	public String vm()
	{
		return "cdcviewnotices";
	}

}
