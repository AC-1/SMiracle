package com.miracle.dao.jpa;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.miracle.mode.jpa.PeopleGroup;


@Repository("peopleGroupDAO")
public interface PeopleGroupDAO extends CrudRepository<PeopleGroup, Long>, JpaRepository<PeopleGroup, Long>{

	
}
