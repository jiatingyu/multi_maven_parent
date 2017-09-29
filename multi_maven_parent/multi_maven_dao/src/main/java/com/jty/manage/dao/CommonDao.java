package com.jty.manage.dao;

import org.springframework.stereotype.Repository;

import com.jty.manage.entity.sysLog;

@Repository
public interface CommonDao {
	void insertLog(sysLog b);
}
