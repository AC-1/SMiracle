package com.miracle.mode.vo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang.builder.ToStringBuilder;

import com.miracle.mode.Car;


/** Car VO */
public class CarVO implements Serializable {
	
	private static final long serialVersionUID = 1L;

	private int id;
	
	private String name;
	
	private List<Integer> ids;
	
	private List<String> names;
	
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
	
	
	public List<Integer> getIds() {
		return ids;
	}

	public void setIds(List<Integer> ids) {
		this.ids = ids;
	}

	public List<String> getNames() {
		return names;
	}

	public void setNames(List<String> names) {
		this.names = names;
	}

	public String toString(){
		return ToStringBuilder.reflectionToString(this);
	}
}