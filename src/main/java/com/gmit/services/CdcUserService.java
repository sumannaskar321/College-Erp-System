package com.gmit.services;

import java.time.LocalDate;
import java.util.ArrayList;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.CdcUser;
import com.gmit.model.ReminderPageModel;
import com.gmit.model.StudentDetails;
import com.gmit.repository.CdcUserRepository;
import com.gmit.repository.StudentRegisterRepository;


@Transactional
@Service
public class CdcUserService {
	
	@Autowired
	private final CdcUserRepository cdcUserRepository;
	
	@Autowired
	private StudentRegisterRepository studentRegisterRepositore;
	
	public CdcUserService(CdcUserRepository cdcUserRepository) {
		this.cdcUserRepository=cdcUserRepository;
	}
	
	public CdcUser saveMyUser(CdcUser cdcUser) {
		cdcUser = cdcUserRepository.save(cdcUser);
		
		return cdcUser;
		
	}
	
	public void deleteMyUser(int id) 
	{
		cdcUserRepository.deleteById(id);
		
	}
	
	public CdcUser findByUsernameAndPassword(String username,String password)
	{
		return cdcUserRepository.findByUsernameAndPassword(username,password);
	}
	
	public ArrayList<StudentDetails> showStudentDetails(String batch)
	{
		return studentRegisterRepositore.findByBatch(batch);
	}
	
	public ArrayList<StudentDetails> showAllStudentDetails(String batch,String department)
	{
		
		ArrayList<StudentDetails> cm = new ArrayList<StudentDetails>();
		cm = studentRegisterRepositore.showAllStudentDetails(batch,department);
		return cm;
	}
	
	
	public ArrayList<CdcUser> getAllCdcMember()
	{
		ArrayList<CdcUser> cdcmember = new ArrayList<CdcUser>();
		cdcUserRepository.findAll().forEach(cdcmember :: add);
		return cdcmember;
	}
	
	
	
	
}
