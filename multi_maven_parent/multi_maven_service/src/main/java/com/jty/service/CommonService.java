package com.jty.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jty.manage.dao.CommonDao;
import com.jty.manage.entity.sysLog;

@Service
public class CommonService {
	@Autowired
	CommonDao commonDao;
	
	
	public void insert(sysLog log )  {
		commonDao.insertLog(log);
	}
}
