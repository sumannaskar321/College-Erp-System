package com.gmit.model;

import java.io.Serializable;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.Table;




@Table(name="studentdetails")
@Entity
public class StudentDetails implements Serializable
{
	

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String studentName; 
	private double collegeCode;
	private long registration;
	private long rollNo;
	private String studentDob;
	private String emailId;
	private String emailAddress;
	private long mobileNumber;
	private long alternatemobileNumber;
	
	private String department;
	private String batch;
	private String gender;
	private String fatherName;
	private String motherName;
	private String fatheroccupation;
	private long fatherPhoneNo;
	private long motherPhoneNo;
	private String permenantLocation;
	private String currentLocation;
	
	private String nationality;
	
	
	private String catagory;
	private String differentlyAbled;
	private double class10Marks;
	private double class12Marks;
	private double diplomaMarks;
	private String foreignLanguageKnown;
	private String foreignLanguageDetails;
	private String indianLanguageDetails;
	private String hobbies;
	
	private String subjectofInterest;
	private String reasonChooseEng;
	private String yourStrenghts;
	private String yourWeakness;
	private String futuregoal;
	private String password;
	private String bloodGroup;
	private String computerlanguageknown;
	private String interest;
	private String personalWish;
	private String lookingfor;
	private float secondsemsgpa;
	private float firstsemsgpa;
	private float thirdsemsgpa;
	private float fourthsemsgpa;
	private float  fifthsemsgpa;
	private float sixthsemsgpa;
	private float seventhsemsgpa;
	private float eighthsemsgpa;
	private String learningMethod;
	

	private double originalAttendance;
	private double fakeAttendance;
	private String HighestQualification;
	
	
	

	public StudentDetails() {}
	
	
	public int getId() {
		return id;
	}




	public void setId(int id) {
		this.id = id;
	}




	public String getStudentName() {
		return studentName;
	}




	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}




	public double getCollegeCode() {
		return collegeCode;
	}




	public void setCollegeCode(double collegeCode) {
		this.collegeCode = collegeCode;
	}




	public long getRegistration() {
		return registration;
	}




	public void setRegistration(long registration) {
		this.registration = registration;
	}




	public long getRollNo() {
		return rollNo;
	}




	public void setRollNo(long rollNo) {
		this.rollNo = rollNo;
	}




	public String getStudentDob() {
		return studentDob;
	}




	public void setStudentDob(String studentDob) {
		this.studentDob = studentDob;
	}




	public String getEmailId() {
		return emailId;
	}




	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}




	public String getEmailAddress() {
		return emailAddress;
	}




	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}




	public long getMobileNumber() {
		return mobileNumber;
	}




	public void setMobileNumber(long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}





	public long getAlternatemobileNumber() {
		return alternatemobileNumber;
	}

	public void setAlternatemobileNumber(long alternatemobileNumber) {
		this.alternatemobileNumber = alternatemobileNumber;
	}
	
	
	
	

	public String getDepartment() {
		return department;
	}




	public void setDepartment(String department) {
		this.department = department;
	}




	public String getBatch() {
		return batch;
	}




	public void setBatch(String batch) {
		this.batch = batch;
	}




	public String getGender() {
		return gender;
	}




	public void setGender(String gender) {
		this.gender = gender;
	}




	public String getFatherName() {
		return fatherName;
	}




	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}




	public String getMotherName() {
		return motherName;
	}




	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}




	public String getFatheroccupation() {
		return fatheroccupation;
	}




	public void setFatheroccupation(String fatheroccupation) {
		this.fatheroccupation = fatheroccupation;
	}




	public long getFatherPhoneNo() {
		return fatherPhoneNo;
	}




	public void setFatherPhoneNo(long fatherPhoneNo) {
		this.fatherPhoneNo = fatherPhoneNo;
	}




	public long getMotherPhoneNo() {
		return motherPhoneNo;
	}




	public void setMotherPhoneNo(long motherPhoneNo) {
		this.motherPhoneNo = motherPhoneNo;
	}




	public String getPermenantLocation() {
		return permenantLocation;
	}




	public void setPermenantLocation(String permenantLocation) {
		this.permenantLocation = permenantLocation;
	}




	public String getCurrentLocation() {
		return currentLocation;
	}




	public void setCurrentLocation(String currentLocation) {
		this.currentLocation = currentLocation;
	}




	public String getNationality() {
		return nationality;
	}




	public void setNationality(String nationality) {
		this.nationality = nationality;
	}




	public String getCatagory() {
		return catagory;
	}




	public void setCatagory(String catagory) {
		this.catagory = catagory;
	}




	public String getDifferentlyAbled() {
		return differentlyAbled;
	}




	public void setDifferentlyAbled(String differentlyAbled) {
		this.differentlyAbled = differentlyAbled;
	}




	public double getClass10Marks() {
		return class10Marks;
	}




	public void setClass10Marks(double class10Marks) {
		this.class10Marks = class10Marks;
	}




	public double getClass12Marks() {
		return class12Marks;
	}




	public void setClass12Marks(double class12Marks) {
		this.class12Marks = class12Marks;
	}




	public double getDiplomaMarks() {
		return diplomaMarks;
	}




	public void setDiplomaMarks(double diplomaMarks) {
		this.diplomaMarks = diplomaMarks;
	}




	public String getForeignLanguageKnown() {
		return foreignLanguageKnown;
	}




	public void setForeignLanguageKnown(String foreignLanguageKnown) {
		this.foreignLanguageKnown = foreignLanguageKnown;
	}




	public String getForeignLanguageDetails() {
		return foreignLanguageDetails;
	}




	public void setForeignLanguageDetails(String foreignLanguageDetails) {
		this.foreignLanguageDetails = foreignLanguageDetails;
	}




	public String getIndianLanguageDetails() {
		return indianLanguageDetails;
	}




	public void setIndianLanguageDetails(String indianLanguageDetails) {
		this.indianLanguageDetails = indianLanguageDetails;
	}




	public String getHobbies() {
		return hobbies;
	}




	public void setHobbies(String hobbies) {
		this.hobbies = hobbies;
	}




	public String getSubjectofInterest() {
		return subjectofInterest;
	}




	public void setSubjectofInterest(String subjectofInterest) {
		this.subjectofInterest = subjectofInterest;
	}




	public String getReasonChooseEng() {
		return reasonChooseEng;
	}




	public void setReasonChooseEng(String reasonChooseEng) {
		this.reasonChooseEng = reasonChooseEng;
	}




	public String getYourStrenghts() {
		return yourStrenghts;
	}




	public void setYourStrenghts(String yourStrenghts) {
		this.yourStrenghts = yourStrenghts;
	}




	public String getYourWeakness() {
		return yourWeakness;
	}




	public void setYourWeakness(String yourWeakness) {
		this.yourWeakness = yourWeakness;
	}




	public String getFuturegoal() {
		return futuregoal;
	}




	public void setFuturegoal(String futuregoal) {
		this.futuregoal = futuregoal;
	}




	public String getPassword() {
		return password;
	}




	public void setPassword(String password) {
		this.password = password;
	}




	public String getBloodGroup() {
		return bloodGroup;
	}




	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}




	public String getComputerlanguageknown() {
		return computerlanguageknown;
	}




	public void setComputerlanguageknown(String computerlanguageknown) {
		this.computerlanguageknown = computerlanguageknown;
	}




	public String getInterest() {
		return interest;
	}




	public void setInterest(String interest) {
		this.interest = interest;
	}




	public String getPersonalWish() {
		return personalWish;
	}




	public void setPersonalWish(String personalWish) {
		this.personalWish = personalWish;
	}




	
	
	
	public String getLookingfor() {
		return lookingfor;
	}

	public void setLookingfor(String lookingfor) {
		this.lookingfor = lookingfor;
	}
	




	public float getSecondsemsgpa() {
		return secondsemsgpa;
	}


	public void setSecondsemsgpa(float secondsemsgpa) {
		this.secondsemsgpa = secondsemsgpa;
	}


	public float getFirstsemsgpa() {
		return firstsemsgpa;
	}


	public void setFirstsemsgpa(float firstsemsgpa) {
		this.firstsemsgpa = firstsemsgpa;
	}


	public float getThirdsemsgpa() {
		return thirdsemsgpa;
	}


	public void setThirdsemsgpa(float thirdsemsgpa) {
		this.thirdsemsgpa = thirdsemsgpa;
	}


	public float getFourthsemsgpa() {
		return fourthsemsgpa;
	}


	public void setFourthsemsgpa(float fourthsemsgpa) {
		this.fourthsemsgpa = fourthsemsgpa;
	}


	public float getFifthsemsgpa() {
		return fifthsemsgpa;
	}


	public void setFifthsemsgpa(float fifthsemsgpa) {
		this.fifthsemsgpa = fifthsemsgpa;
	}


	public float getSixthsemsgpa() {
		return sixthsemsgpa;
	}


	public void setSixthsemsgpa(float sixthsemsgpa) {
		this.sixthsemsgpa = sixthsemsgpa;
	}


	public float getSeventhsemsgpa() {
		return seventhsemsgpa;
	}


	public void setSeventhsemsgpa(float seventhsemsgpa) {
		this.seventhsemsgpa = seventhsemsgpa;
	}


	public float getEighthsemsgpa() {
		return eighthsemsgpa;
	}


	public void setEighthsemsgpa(float eighthsemsgpa) {
		this.eighthsemsgpa = eighthsemsgpa;
	}


	public double getOriginalAttendance() {
		return originalAttendance;
	}




	public void setOriginalAttendance(double originalAttendance) {
		this.originalAttendance = originalAttendance;
	}




	public double getFakeAttendance() {
		return fakeAttendance;
	}




	public void setFakeAttendance(double fakeAttendance) {
		this.fakeAttendance = fakeAttendance;
	}






	public String getLearningMethod() {
		return learningMethod;
	}




	public void setLearningMethod(String learningMethod) {
		this.learningMethod = learningMethod;
	}
	
	

	public String getHighestQualification() {
		return HighestQualification;
	}

	public void setHighestQualification(String highestQualification) {
		HighestQualification = highestQualification;
	}


}
