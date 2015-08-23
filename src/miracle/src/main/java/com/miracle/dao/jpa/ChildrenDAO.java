package com.miracle.dao.jpa;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.miracle.mode.PresentWorship;


@Repository("childrenDAO")
public interface ChildrenDAO extends CrudRepository<PresentWorship, Long>, JpaRepository<PresentWorship, Long>{

	
//	@Query(value = "select c from ShareMessage c ")
//	Page<ShareMessage> findAll(Pageable pageable);
//	
//	@Query(value = "select c from ShareMessage c where c.shareType = :value and c.shareHide = 'N' ")
//	List<ShareMessage> findAllByShareType(@Param("value") String shareType);
//	
//	/** 查詢加入團的成員*/
//	@Query(value = "select c from GroupJoinPeople c where c.joinGroupId = ?1")
//	List<GroupJoinPeople> findGroupJoinPeopleAllByGroupId(String groupId);
}
