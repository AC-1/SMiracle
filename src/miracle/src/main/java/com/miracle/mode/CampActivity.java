package com.miracle.mode;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 @author Joshua
 * 營會資料表格
 */
@Entity
@Table(name="camp_activity",catalog="miracle")
public class CampActivity  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	@Id  
	@Column(name="ACTIVITY_ID")
	private String activityId;
	
	@Column(name="ACTIVITY_NAME")
	private String activityName;
	
	

	public String getActivityId() {
		return activityId;
	}

	public void setActivityId(String activityId) {
		this.activityId = activityId;
	}

	public String getActivityName() {
		return activityName;
	}

	public void setActivityName(String activityName) {
		this.activityName = activityName;
	}
	
	
	
	
	
	
	
	
}
