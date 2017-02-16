package com.miracle.mode.jpa;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 @author Joshua
 * 小組群組
 */
@Entity
@Table(name="people_group",catalog="miracle")
public class PeopleGroup  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	@Id  
	@Column(name="ID")
	private String id;
	
	@Column(name="NAME")
	private String name;
	
	@Column(name="LEADER")
	private String leader;
	
	@Column(name="STATUS")
	private String status;
	
	@Column(name="GROUP_TABLE")
	private String groupTable;
	
	@Column(name="OWNER")
	private String owner;
	
	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLeader() {
		return leader;
	}

	public void setLeader(String leader) {
		this.leader = leader;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	

	public String getGroupTable() {
		return groupTable;
	}

	public void setGroupTable(String groupTable) {
		this.groupTable = groupTable;
	}

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	
	
	
}
