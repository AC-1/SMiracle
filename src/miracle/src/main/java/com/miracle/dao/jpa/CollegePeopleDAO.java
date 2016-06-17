package com.miracle.dao.jpa;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.miracle.mode.CollegePeople;


@Repository("collegePeopleDAO")
public interface CollegePeopleDAO extends CrudRepository<CollegePeople, Long>, JpaRepository<CollegePeople, Long>{

	
	
	
}
