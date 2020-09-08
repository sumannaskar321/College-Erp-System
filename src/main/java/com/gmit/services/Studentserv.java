package com.gmit.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.StudentRegmodel;
import com.gmit.repository.StudservRep;

@Service
public class Studentserv {
	
		@Autowired
		private StudservRep ssr;
		
		public StudentRegmodel saveDet(StudentRegmodel srm)
		{
			srm=ssr.save(srm);
			return srm;
		}
		
		
		public ArrayList<StudentRegmodel> getAll()
		{
			ArrayList<StudentRegmodel> a = new ArrayList<StudentRegmodel>();
			ssr.findAll().forEach(a ::add);
			return a;
		}
		
		
		public void deleteStudentPlacementRegisteredRecordfromDb(int id)
		{
				ssr.deleteById(id);
			
		}
}
