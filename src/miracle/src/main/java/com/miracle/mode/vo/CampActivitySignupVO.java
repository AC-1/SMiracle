package com.miracle.mode.vo;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 @author Joshua
 * 青年大專活動報名表
 */
public class CampActivitySignupVO  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	private String signupId;
	private String activityId;
	private String ifCheckIn;
	private String signupDate;
	
	private String collegeId;
	
	private String collegeName;
	
	private String collegeArea;
	
	private String collegeGroup;
	
	private String collegeGender;
	
	private String collegeBirthday;
	
	private String collegeSchoolGrade;
	
	private String collegePhone;
	
	private String collegeTel;
	
	private String collegeGrade;
	
	private String collegeLeader;
	
	private String activityName;
	
	
	public String getSignupId() {
		return signupId;
	}
	public void setSignupId(String signupId) {
		this.signupId = signupId;
	}
	public String getActivityId() {
		return activityId;
	}
	public void setActivityId(String activityId) {
		this.activityId = activityId;
	}
	public String getCollegeId() {
		return collegeId;
	}
	public void setCollegeId(String collegeId) {
		this.collegeId = collegeId;
	}
	public String getIfCheckIn() {
		return ifCheckIn;
	}
	public void setIfCheckIn(String ifCheckIn) {
		this.ifCheckIn = ifCheckIn;
	}
	public String getSignupDate() {
		return signupDate;
	}
	public void setSignupDate(String signupDate) {
		this.signupDate = signupDate;
	}
	public String getCollegeName() {
		return collegeName;
	}
	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}
	public String getCollegeArea() {
		return collegeArea;
	}
	public void setCollegeArea(String collegeArea) {
		this.collegeArea = collegeArea;
	}
	public String getCollegeGroup() {
		return collegeGroup;
	}
	public void setCollegeGroup(String collegeGroup) {
		this.collegeGroup = collegeGroup;
	}
	public String getCollegeGender() {
		return collegeGender;
	}
	public void setCollegeGender(String collegeGender) {
		this.collegeGender = collegeGender;
	}
	public String getCollegeBirthday() {
		return collegeBirthday;
	}
	public void setCollegeBirthday(String collegeBirthday) {
		this.collegeBirthday = collegeBirthday;
	}
	public String getCollegeSchoolGrade() {
		return collegeSchoolGrade;
	}
	public void setCollegeSchoolGrade(String collegeSchoolGrade) {
		this.collegeSchoolGrade = collegeSchoolGrade;
	}
	public String getCollegePhone() {
		return collegePhone;
	}
	public void setCollegePhone(String collegePhone) {
		this.collegePhone = collegePhone;
	}
	public String getCollegeTel() {
		return collegeTel;
	}
	public void setCollegeTel(String collegeTel) {
		this.collegeTel = collegeTel;
	}
	public String getCollegeGrade() {
		return collegeGrade;
	}
	public void setCollegeGrade(String collegeGrade) {
		this.collegeGrade = collegeGrade;
	}
	public String getCollegeLeader() {
		return collegeLeader;
	}
	public void setCollegeLeader(String collegeLeader) {
		this.collegeLeader = collegeLeader;
	}
	public String getActivityName() {
		return activityName;
	}
	public void setActivityName(String activityName) {
		this.activityName = activityName;
	}

	
	
	
	
	
}
