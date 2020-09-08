package com.gmit.controller;


import java.util.ArrayList;
import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gmit.model.SearchModel;
import com.gmit.model.StudentDetails;
import com.gmit.services.GmitBatchesService;
import com.gmit.services.SearchService;


@Controller
public class SearchController {

	
	@Autowired
	private SearchService srhserv;
	
	@Autowired
	private GmitBatchesService gmitbatchservice;
	
	@RequestMapping("/search-student-filter")
	public String opensearchStudentFilterPage1(HttpSession session) {
		List<String> fourBatches = gmitbatchservice.getTop4Batches();
		session.setAttribute("fourbatches", fourBatches);
		session.setAttribute("dynamicselectmsg", "");
		return "searchStudentFilterPage1";
	}
	
	@RequestMapping("/searchDb")
	public String searchFromDb(@ModelAttribute SearchModel srcmod,HttpSession session )
	{
		String dynamicSelectValue = srcmod.getDynamicselect();
		if(dynamicSelectValue.equals("select")) {
			session.setAttribute("dynamicselectmsg", "Please! select a Option From Both Dropdown List");
			 return"searchStudentFilterPage1";
		}
		else {
			//System.out.println(srcmod.getFilteroption());
			List<StudentDetails> stud= srhserv.searchDb(srcmod);
			session.setAttribute("searchresult", stud);
			//System.out.println(stud.size());
			return "searchStudentFilterPage2";
		}

	}

	@RequestMapping("/filter")
	public String filtering(@ModelAttribute SearchModel srcmod,HttpSession session )
	{
		String dynamicSelectValue = srcmod.getDynamicselect();
		if(dynamicSelectValue.equals("select")) {
			session.setAttribute("dynamicselectmsg", "Please! select a Option From Both Dropdown List");
			 return"searchStudentFilterPage2";
		}
		
		else 
		{
		List<StudentDetails> stud= (List<StudentDetails>)session.getAttribute("searchresult");
		List<StudentDetails> stud1 = new ArrayList<StudentDetails>();
		double a;
		String b;
		switch(srcmod.getFilteroption()) {
		
		case "10markslessthan" :  a=Double.parseDouble(srcmod.getTextbox());
							for (int i = 0; i < stud.size(); i++) {
							if(stud.get(i).getClass10Marks() < a)
								stud1.add(stud.get(i));
							}
							break;
							
		case "10marksgreaterequal": a=Double.parseDouble(srcmod.getTextbox());
							for (int i = 0; i < stud.size(); i++) {
							if(stud.get(i).getClass10Marks() >= a) 
								stud1.add(stud.get(i));
							}
							break;
			
	
		case "12markslessthan" :  a=Double.parseDouble(srcmod.getTextbox());
							for (int i = 0; i < stud.size(); i++) {
								if(stud.get(i).getClass12Marks()< a)
									stud1.add(stud.get(i));
							}
							break;
			
		case "12marksgreaterequal": a=Double.parseDouble(srcmod.getTextbox());
							for (int i = 0; i < stud.size(); i++) {
								if(stud.get(i).getClass12Marks() >= a)
									stud1.add(stud.get(i));
							}
							break;
			
		case "bloodgroup": b=srcmod.getDynamicselect();
		System.out.println(b);
							for (int i = 0; i < stud.size(); i++) {
								if(stud.get(i).getBloodGroup().equals(b))
									stud1.add(stud.get(i));
							}
							break;
			
		case "department": b=srcmod.getDynamicselect();
						for (int i = 0; i < stud.size(); i++) {
								if(stud.get(i).getDepartment().equals(b)) 
									stud1.add(stud.get(i));
						}
						break;
						
		case "batch": b=srcmod.getDynamicselect();
							for (int i = 0; i < stud.size(); i++) {
								if(stud.get(i).getBatch().equals(b)) 
									stud1.add(stud.get(i));
							}
							break;
			
		case "dob":  b=srcmod.getDatevalue();
					System.out.println(b);
					for (int i = 0; i < stud.size(); i++) {
						System.out.println(stud.get(i).getDepartment());
						if(stud.get(i).getStudentDob().equals(b))
							stud1.add(stud.get(i));
					}
					break;
			
		case "gender": b=srcmod.getDynamicselect();
		System.out.println(b);
					for (int i = 0; i < stud.size(); i++) {
						System.out.println(stud.get(i).getDepartment());
						if(stud.get(i).getGender().equals(b))
							stud1.add(stud.get(i));
					}
					break;
			
		case "category": b=srcmod.getDynamicselect();
						for (int i = 0; i < stud.size(); i++) {
							if(stud.get(i).getCatagory().equals(b))
								stud1.add(stud.get(i));
						}
						break;
			
		case "differentlyabled": b=srcmod.getDynamicselect();
								for (int i = 0; i < stud.size(); i++) {
									if(stud.get(i).getDifferentlyAbled().equals(b))
										stud1.add(stud.get(i));
								}
								break;
		}
		
		
		session.setAttribute("searchresult", stud1);
		System.out.println(stud1.size());
		return "searchStudentFilterPage2";
		}
	}
	
	
	
/* ------------------Before update this file------------------ */	
//	@Autowired
//	private SearchService searchservice;
//	
//	
//	
//	@RequestMapping(value="/getvalues",method = {RequestMethod.GET, RequestMethod.POST })
//	public String searchStudent(@RequestParam(value="firstArray[]") String[] firstArray,@RequestParam(value="secondArray[]") String[] secondArray,@RequestParam(value="thirdArray[]") String[] thirdArray,HttpSession request)
//	{
//		
//		String query="";
//		int j = firstArray.length;
//		for(int i=0;i < firstArray.length-1;i++)
//		{
//			query+=firstArray[i]+secondArray[i]+"'"+thirdArray[i]+"'"+" AND ";
//		}
//		query+=firstArray[j-1]+secondArray[j-1]+"'"+thirdArray[j-1]+"'";
//		System.out.println(query);
//		List<StudentDetails> st = searchservice.searchStudent(query);
//		System.out.println(st);
//		request.setAttribute("aa", query);
//		
//		return "idk";
//	}
//	
//	@RequestMapping(value="/show")
//	public String Show()
//	{
//		System.out.println("redi");
//		return "idk";
//	}
//
//	@RequestMapping("/hi")
//	public String hi()
//	{
//		return "searchStudent";
//	}
	

}
