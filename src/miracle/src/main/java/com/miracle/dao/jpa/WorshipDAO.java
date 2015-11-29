package com.miracle.dao.jpa;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.miracle.mode.Worship;


@Repository("worshipDAO")
public interface WorshipDAO extends CrudRepository<Worship, Long>, JpaRepository<Worship, Long>{

	
	
}
