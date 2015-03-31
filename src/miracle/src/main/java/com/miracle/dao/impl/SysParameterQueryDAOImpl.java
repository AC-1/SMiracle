package com.miracle.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.miracle.dao.DAOObjectNotFoundException;
import com.miracle.dao.SysParameterQueryDAO;
import com.miracle.mode.vo.SysParameterVO;


@Repository("sysParameterQueryDAO")
public class SysParameterQueryDAOImpl extends BaseQueryDAOImpl<SysParameterVO, Map<String, Object>> implements SysParameterQueryDAO {

	@Override
	public List<SysParameterVO> findSysParameterDefault() throws DAOObjectNotFoundException {
		
		return this.getSqlSession().selectList(getNameSpace() + ".findSysParameterDefault");
	}

	@Override
	public List<SysParameterVO> findSysParameterZero() throws DAOObjectNotFoundException {
		
		return this.getSqlSession().selectList(getNameSpace() + ".findSysParameterZero");
	}

	@Override
	public List<SysParameterVO> findSysParameterOne(String systemId) throws DAOObjectNotFoundException {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("systemId", systemId);
		return this.getSqlSession().selectList(getNameSpace() + ".findSysParameterOne", map);
	}

	@Override
	public List<SysParameterVO> findSysParameterTwo(String systemId, String systemParameterId) throws DAOObjectNotFoundException {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("systemId", systemId);
		map.put("systemParameterId", systemParameterId);
		return this.getSqlSession().selectList(getNameSpace() + ".findSysParameterTwo", map);
	}

	

	
	
	

}