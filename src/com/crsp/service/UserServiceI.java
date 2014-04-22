package com.crsp.service;

import java.util.List;

import com.crsp.dto.RecordDTO;
import com.crsp.dto.ResourceDTO;
import com.crsp.dto.UserDTO;
import com.crsp.entity.User;

public interface UserServiceI {
<<<<<<< HEAD
	// 装入id, user_name, school_name, department_name
	public UserDTO login(String id, String password); // 用户登录

	// 装入id, user_name, school_name, department_name
	public UserDTO register(User user); // 用户注册

	// 每个ResourceDTO装入id, resource_name, status_name, time, type
	public List<ResourceDTO> getMyUpload(int userId, int page);

	// 每个ResourceDTO装入id, resource_name, status_name, time, type
	public List<ResourceDTO> getMyDownload(int userId, int page);

	// 每个RecordDTO装入id, delta, time,
	public List<RecordDTO> getMyRecord(int userId, int page);
=======
	//装入id, user_name, school_name, department_name
	public UserDTO login(String id, String password);		//用户登录
	
	//装入id, user_name, school_name, department_name
	public UserDTO register(User user);	//用户注册
	
	//每个ResourceDTO装入id, resource_name, status_name, time, type
	public List<ResourceDTO> getMyUpload(int userId, Page page);
	
	//每个ResourceDTO装入id, resource_name, status_name, time, type
	public List<ResourceDTO> getMyDownload(int userId, Page page);
	
	//每个RecordDTO装入id, delta, time, 
	public List<RecordDTO> getMyRecord(int userId, Page page);
>>>>>>> c9db029d26efc2a290d42b72abe7b300dea98fe1
}
