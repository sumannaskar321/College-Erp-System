package com.gmit.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.CdcModel;
import com.gmit.repository.CdcServiceRep;


@Service
public class CdcService {

	
	@Autowired
	private CdcServiceRep csr;



public CdcModel addCdcModel(CdcModel cm)
{
	System.out.println("INSIDE THE EMPLOYEEREGMOdel in SERVICE CLASS");
	cm=csr.save(cm);
	return cm;
	
	
}


public ArrayList<CdcModel> getAllNotices()
{
	ArrayList<CdcModel> cm = new ArrayList<CdcModel>();
	csr.findAll().forEach(cm :: add);
	return cm;

}

public void deleteNotice(int notice_id)
{
	csr.deleteById(notice_id);
}

public CdcModel findOne(int notice_id)
{
	return csr.findById(notice_id).orElse(new CdcModel());
}
}
