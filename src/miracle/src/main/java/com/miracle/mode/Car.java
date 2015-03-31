package com.miracle.mode;

import java.io.Serializable;

import org.apache.commons.lang.builder.ToStringBuilder;


/** Car */
public class Car implements Serializable {
	
	private static final long serialVersionUID = 1L;

	private int id;
	
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