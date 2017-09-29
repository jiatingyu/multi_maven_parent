package com.jty.service.manage;

import java.util.List;

import org.springframework.stereotype.Service;

import com.jty.manage.entity.User;

public interface PermissionService {

	List<User> getAllUser();

	void insertUser(User user);

	void deleteUser(String id);
}
