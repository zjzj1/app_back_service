package com.xiao.appserv.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xiao.appserv.dao.IUserDao;
import com.xiao.appserv.entity.User;
import com.xiao.appserv.service.IUserService;
@Service
public class IUserServiceImpl implements IUserService{
	@Resource
	private IUserDao userDao;
	public User getUserById(int id) {
		return userDao.selectByPrimaryKey(id);
	}

}
