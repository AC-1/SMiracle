package com.miracle.mode.jpa;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.apache.commons.lang.builder.ToStringBuilder;


/** Car */
@Entity
@Table(name="car",catalog="miracle")
public class CarJpa implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Id  
	@Column(name="ID")
	private int id;
	
	@Column(name="NAME")
	private String name;
	
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String toString(){
		return ToStringBuilder.reflectionToString(this);
	}
}