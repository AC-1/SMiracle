package com.miracle.mode;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 @author Joshua
 * 青年大專活動打卡報到
 */
@Entity
@Table(name="college_camp_check_in",catalog="miracle")
public class CollegeCampCheckIn  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id  
	@Column(name="CHECK_IN_ID")
	private String checkInId;
	
	@Column(name="COLLEGE_ID")
	private String collegeId;
	
	@Column(name="CHECK_IN_TIME")
	private String checkInTime;
	
	@Column(name="CHECK_IN_LAST_TIME")
	private String checkInLastTime;
	
	@Column(name="IF_CHECK_IN")
	private String ifCheckIn;
	
	@Column(name="CAMP_DATE")
	private String campDate;
	
	@Column(name="ACTIVITY_ID")
	private String activityId;
	
	@Column(name="CHECK_TYPE_TIME")
	private String checkTypeTime;
	
	@Column(name="CHECK_INFO")
	private String checkInfo;

	public String getCheckInId() {
		return checkInId;
	}

	public void setCheckInId(String checkInId) {
		this.checkInId = checkInId;
	}

	public String getCollegeId() {
		return collegeId;
	}

	public void setCollegeId(String collegeId) {
		this.collegeId = collegeId;
	}

	public String getCheckInTime() {
		return checkInTime;
	}

	public void setCheckInTime(String checkInTime) {
		this.checkInTime = checkInTime;
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
