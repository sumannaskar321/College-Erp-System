package com.gmit.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.IgnoreMerge;
import com.gmit.repository.IgnoreMergeRepository;

@Service
public class IgnoreMergeService {

	@Autowired
	private IgnoreMergeRepository ignoremerge;
	
	
	public IgnoreMerge saveInformationIgnore(IgnoreMerge ignore)
	{
		return ignoremerge.save(ignore);
	}
	
	
	public ArrayList<IgnoreMerge> getAllInfos()
	{
		ArrayList<IgnoreMerge> ig =  new ArrayList<IgnoreMerge>();
		ignoremerge.findAll().forEach(ig :: add);
		return ig;
	}
	
	public IgnoreMerge searchById(int id)
	{
		return ignoremerge.findById(id).orElse(new IgnoreMerge());
	}
}
