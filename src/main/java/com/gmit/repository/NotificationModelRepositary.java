package com.gmit.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import com.gmit.model.NotificationModel;

public interface NotificationModelRepositary extends CrudRepository<NotificationModel, Integer> {

	
	@Query(value="SELECT * FROM notification_model WHERE student_roll = :rollNo AND notificationstatus=0 ORDER BY id DESC",nativeQuery = true)
	ArrayList<NotificationModel> getNotification(long rollNo);

	@Query(value = "SELECT COUNT(notificationstatus) FROM notification_model WHERE notificationstatus = 0 AND student_roll= :rollNo",nativeQuery = true)
	public int getActiveNotification(long rollNo);
	
	@Transactional
	@Modifying
	@Query(value="UPDATE notification_model SET notificationstatus =1 WHERE student_roll= :rollNo",nativeQuery = true)
	public void markSeenNotification(long rollNo);

}
