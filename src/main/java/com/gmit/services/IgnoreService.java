package com.gmit.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.Ignore1;
import com.gmit.model.Placementmodel;
import com.gmit.repository.IgnoreServiceRepository;

@Service
public class IgnoreService {
	
	@Autowired
	private IgnoreServiceRepository isr;
	
	public Ignore1 saveIgnore(Ignore1 i1)
	{
		i1=isr.save(i1);
		return i1;
	}
}
