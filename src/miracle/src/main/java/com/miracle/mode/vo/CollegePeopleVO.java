package com.miracle.mode.vo;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 @author Joshua
 * 學生主要基本資料表格
 */
public class CollegePeopleVO  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
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
	
	private String checkInTime;
	
	private String checkInId;
	
	private String checkInLastTime;
	
	private String ifCheckIn;
	
	private String campDate;
	
	private String activityId;
	
	private String checkTypeTime;
	
	private String checkInfo;
	
	

	public String getCollegeId() {
		return collegeId;
	}

	public void setCollegeId(String collegeId) {
		this.collegeId = collegeId;
	}

	public String getCollegeName() {
		return collegeName;
	}

	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}

	public String getCheckInTime() {
		return checkInTime;
	}

	public void setCheckInTime(String checkInTime) {
		this.checkInTime = checkInTime;
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

	public String getCheckInId() {
		return checkInId;
	}

	public void setCheckInId(String checkInId) {
		this.checkInId = checkInId;
	}

	public String getCheckInLastTime() {
		return checkInLastTime;
	}

	public void setCheckInLastTime(String checkInLastTime) {
		this.checkInLastTime = checkInLastTime;
	}

	public String getIfCheckIn() {
		return ifCheckIn;
	}

	public void setIfCheckIn(String ifCheckIn) {
		this.ifCheckIn = ifCheckIn;
	}

	public String getCampDate() {
		return campDate;
	}

	public void setCampDate(String campDate) {
		this.campDate = campDate;
	}

	public String getActivityId() {
		return activityId;
	}

	public void setActivityId(String activityId) {
		this.activityId = activityId;
	}

	public String getCheckTypeTime() {
		return checkTypeTime;
	}

	public void setCheckTypeTime(String checkTypeTime) {
		this.checkTypeTime = checkTypeTime;
	}

	public String getCheckInfo() {
		return checkInfo;
	}

	public void setCheckInfo(String checkInfo) {
		this.checkInfo = checkInfo;
	}
	
	
	
	
	
	
}
