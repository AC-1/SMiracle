package com.miracle.dao.jpa;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.miracle.mode.jpa.CollegePeople;


@Repository("collegePeopleDAO")
public interface CollegePeopleDAO extends CrudRepository<CollegePeople, Long>, JpaRepository<CollegePeople, Long>{

	
	/**查詢人員設定- 分頁 - By collegeId*/
	@Query(value = "select c from CollegePeople c where c.collegeId = ?1 ")
	Page<CollegePeople> findCollegePeopleAllByCollegeId(String collegeId, Pageable pageable);
	
	/**查詢人員設定- 分頁 - By collegeName*/
	@Query(value = "select c from CollegePeople c where c.collegeName like %?1% ")
	Page<CollegePeople> findCollegePeopleAllByCollegeName(String collegeName, Pageable pageable);
	
	/**查詢人員設定- 分頁 - By collegeGrade*/
	@Query(value = "select c from CollegePeople c where c.collegeGrade = ?1 ")
	Page<CollegePeople> findCollegePeopleAllByCollegeGrade(String collegeGrade, Pageable pageable);
	
	/**查詢人員設定- 分頁 - By collegeLeader*/
	@Query(value = "select c from CollegePeople c where c.collegeLeader = ?1 ")
	Page<CollegePeople> findCollegePeopleAllByCollegeLeader(String collegeLeader, Pageable pageable);
	
}
