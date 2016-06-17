package com.miracle.dao.jpa;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.miracle.mode.CampActivity;


@Repository("campActivityDAO")
public interface CampActivityDAO extends CrudRepository<CampActivity, Long>, JpaRepository<CampActivity, Long>{

	
}
