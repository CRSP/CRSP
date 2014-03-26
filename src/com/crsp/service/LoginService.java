package com.crsp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crsp.dao.GoodsDao;
import com.crsp.dao.UserDAO;

@Service
public final class LoginService {

	@Autowired
	
	private UserDAO userDao;
}
