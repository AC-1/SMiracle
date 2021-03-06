package com.miracle.dao.jpa;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.miracle.mode.jpa.People;


@Repository("peopleDAO")
public interface PeopleDAO extends CrudRepository<People, Long>, JpaRepository<People, Long>{

	
	@Query(value = "select c from People c where c.grade = ?1")
	Page<People> findAllByGrade(String grade, Pageable pageable);
//	
//	@Query(value = "select c from ShareMessage c where c.shareType = :value and c.shareHide = 'N' ")
//	List<ShareMessage> findAllByShareType(@Param("value") String shareType);
//	
//	/** 查詢加入團的成員*/
//	@Query(value = "select c from GroupJoinPeople c where c.joinGroupId = ?1")
//	List<GroupJoinPeople> findGroupJoinPeopleAllByGroupId(String groupId);
}
