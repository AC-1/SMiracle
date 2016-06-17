package com.miracle.dao.jpa;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.miracle.mode.CampActivitySignup;


@Repository("campActivitySignupDAO")
public interface CampActivitySignupDAO extends CrudRepository<CampActivitySignup, Long>, JpaRepository<CampActivitySignup, Long>{

	
	@Query(value = "select c from CampActivitySignup c where c.activityId = ?1 and c.collegeId = ?2")
	CampActivitySignup findCampActivitySignup(String activityId, String collegeId);
}
