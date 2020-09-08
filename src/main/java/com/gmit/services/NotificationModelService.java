package com.gmit.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.NotificationModel;
import com.gmit.repository.NotificationModelRepositary;

@Service
public class NotificationModelService {
	
	@Autowired
	private NotificationModelRepositary notificattionobject;
	
	
	public void SaveNotificationIntoDatabase (NotificationModel noti)
	{
		notificattionobject.save(noti);
		
		
	}


	public ArrayList<NotificationModel> getNotification(long rollNo) {
		
		return notificattionobject.getNotification(rollNo);
	}
	
	public NotificationModel searchById(int notificationid)
	{
		return notificattionobject.findById(notificationid).orElse(new NotificationModel());
				
	}


	public int getActiveNotification(long rollNo) {
		
		return notificattionobject.getActiveNotification(rollNo);
	}


	public void markSeennotification(long rollNo) {
		
		notificattionobject.markSeenNotification(rollNo);
		
	}

}
