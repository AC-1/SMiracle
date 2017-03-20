package com.miracle.dao.jpa;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.miracle.mode.jpa.CampActivity;
import com.miracle.mode.jpa.Comm;


@Repository("commDAO")
public interface CommDAO extends CrudRepository<Comm, Long>, JpaRepository<Comm, Long>{

	
}
