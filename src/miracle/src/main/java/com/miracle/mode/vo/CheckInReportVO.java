package com.miracle.mode.vo;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 @author Joshua
 *報到資料匯出EXCEL
 */
public class CheckInReportVO  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	private String collegeId;
	private String collegeName;
	private String collegeArea;
	private String collegeGroup;
	private String collegePhone;
	private String checkInTime;
	
	
	private String collegeId1;
	private String collegeName1;
	private String collegeArea1;
	private String collegeGroup1;
	private String collegePhone1;
	private String checkInTime1;
	
	
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
	public String getCollegePhone() {
		return collegePhone;
	}
	public void setCollegePhone(String collegePhone) {
		this.collegePhone = collegePhone;
	}
	public String getCheckInTime() {
		return checkInTime;
	}
	public void setCheckInTime(String checkInTime) {
		this.checkInTime = checkInTime;
	}
	public String getCollegeId1() {
		return collegeId1;
	}
	public void setCollegeId1(String collegeId1) {
		this.collegeId1 = collegeId1;
	}
	public String getCollegeName1() {
		return collegeName1;
	}
	public void setCollegeName1(String collegeName1) {
		this.collegeName1 = collegeName1;
	}
	public String getCollegeArea1() {
		return collegeArea1;
	}
	public void setCollegeArea1(String collegeArea1) {
		this.collegeArea1 = collegeArea1;
	}
	public String getCollegeGroup1() {
		return collegeGroup1;
	}
	public void setCollegeGroup1(String collegeGroup1) {
		this.collegeGroup1 = collegeGroup1;
	}
	public String getCollegePhone1() {
		return collegePhone1;
	}
	public void setCollegePhone1(String collegePhone1) {
		this.collegePhone1 = collegePhone1;
	}
	public String getCheckInTime1() {
		return checkInTime1;
	}
	public void setCheckInTime1(String checkInTime1) {
		this.checkInTime1 = checkInTime1;
	}

	
	
	
	
	
	
	
}
