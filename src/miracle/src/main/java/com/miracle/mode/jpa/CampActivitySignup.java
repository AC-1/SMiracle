package com.miracle.mode.jpa;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 @author Joshua
 * 青年大專活動報名表
 */
@Entity
@Table(name="camp_activity_signup",catalog="miracle")
public class CampActivitySignup  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	@Id  
	@Column(name="SIGNUP_ID")
	private String signupId;
	
	@Column(name="ACTIVITY_ID")
	private String activityId;
	
	@Column(name="COLLEGE_ID")
	private String collegeId;
	
	@Column(name="IF_CHECK_IN")
	private String ifCheckIn;
	
	@Column(name="SIGNUP_DATE")
	private String signupDate;

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
	
	
	
	
	
}
