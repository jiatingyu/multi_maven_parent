package com.jty.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jty.manage.dao.UserDao;


@Service
public class UserService {
	@Autowired(required=true)
	private UserDao dao;
	
	public void getName() throws Exception {
		System.err.println("sevice--->");
	}
}
