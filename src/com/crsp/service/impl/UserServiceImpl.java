/**
 * 
 */
package com.crsp.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crsp.dao.DepartmentDAO;
import com.crsp.dao.RecordDAO;
import com.crsp.dao.ResourceDAO;
import com.crsp.dao.SchoolDAO;
import com.crsp.dao.UserDAO;
import com.crsp.dto.RecordDTO;
import com.crsp.dto.ResourceDTO;
import com.crsp.dto.UserDTO;
import com.crsp.entity.Department;
import com.crsp.entity.Record;
import com.crsp.entity.Resource;
import com.crsp.entity.School;
import com.crsp.entity.User;
import com.crsp.service.UserServiceI;
import com.crsp.utils.Page;
import com.crsp.utils.Pages;

/**
 * @author Administrator
 * 
 */
@Service
public class UserServiceImpl implements UserServiceI {
	@Autowired
	private UserDAO userDAO;// 用户管理DAO接口类
	@Autowired
	private SchoolDAO schoolDAO;// 学校管理DAO接口类
	@Autowired
	private DepartmentDAO departmentDAO;// 部门管理DAO接口类
	@Autowired
	private ResourceDAO resourceDAO;// 资源管理的DAO接口类
	@Autowired
	private RecordDAO recordDAO;// 资源记录管理的DAO接口类

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.service.UserServiceI#login(java.lang.String,
	 * java.lang.String)
	 */
	@Override
	public UserDTO login(String user_id, String password) {
		UserDTO udto = new UserDTO();
		User user = userDAO.findByUserId(user_id);
		if (user == null) {
			// 查询的用户不存在
			udto.setErr(true);
			udto.setErrMsg("请检查你输入的登录信息是否正确!");
			return udto;
		} else {
			if (user.getStatus() == 0) {
				// 用户状态被禁用
				udto.setErr(true);
				udto.setErrMsg("该账户为冻结状态!");
				return udto;
			} else if (!user.getUser_pwd().equals(password)) {
				// 查询的用户密码不正确
				udto.setErr(true);
				udto.setErrMsg("请检查你输入的登录信息是否正确!");
				return udto;
			} else {
				udto.setId(user.getId());
				udto.setUser_name(user.getUser_name());
				udto.setSchool_name(user.getSchool().getName());
				udto.setDepartment_name(user.getDepartment().getName());
				return udto;
			}
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.service.UserServiceI#register(com.crsp.entity.User)
	 */
	@Override
	public UserDTO register(User user) {
		UserDTO udto = new UserDTO();
		User u = userDAO.findByUserId(user.getUser_id());
		// 用户账户已经存在
		if (u != null) {
			udto.setErr(true);
			udto.setErrMsg("该用户的账号已经存在!");
		} else {
			// 将新的用户信息封装成dto
			udto.setUser_name(user.getUser_name());
			School school = schoolDAO.findById(user.getSchool().getId());
			try {
				udto.setSchool_name(school.getName());
			} catch (Exception e) {
				udto.setErr(true);
				udto.setErrMsg("学校不存在!");
				return udto;
			}
			Department department = departmentDAO.findById(user.getDepartment()
					.getId());
			try {
				udto.setDepartment_name(department.getName());
			} catch (Exception e) {
				udto.setErr(true);
				udto.setErrMsg("院系不存在!");
				return udto;
			}
			userDAO.add(user);// 向数据库添加用户信息
			udto.setId(user.getId());
		}
		return udto;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.service.UserServiceI#getMyUpload(int, com.crsp.utils.Page)
	 */
	@Override
	public Pages<ResourceDTO> getMyUpload(int id, Page page) {
		Pages<ResourceDTO> pages = new Pages<ResourceDTO>();
		// 查询相应的资源
		List<Resource> list = resourceDAO.queryResourcesByUser(page, id);
		// 封装dto类
		List<ResourceDTO> rDtos = new ArrayList<ResourceDTO>();
		for (Resource r : list) {
			ResourceDTO rdto = new ResourceDTO();
			rdto.setId(id);
			rdto.setUploader_name(r.getUser_name());
			rdto.setResource_name(r.getName());
			if (r.getStatus() == 0) {
				rdto.setStatus_name("待审核");
			} else {
				rdto.setStatus_name("已审核");
			}
			rdto.setTime(r.getTime());
			rdto.setType_name(r.getResource_type().getName());
			rDtos.add(rdto);
		}
		pages.setPageList(rDtos);
		pages.setPage(page);
		return pages;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.service.UserServiceI#getMyDownload(int,
	 * com.crsp.utils.Page)
	 */
	@Override
	public Pages<ResourceDTO> getMyDownload(int id, Page page) {
		Pages<ResourceDTO> pages = new Pages<ResourceDTO>();
		List<ResourceDTO> rDtos = new ArrayList<ResourceDTO>();
		// 获取该用户相应的下载资源的记录
		List<Record> records = recordDAO.queryUserDownRecords(page, id);
		// 根据相应的资源记录查询该用户下载的资源信息
		for (Record record : records) {
			Resource r = resourceDAO.findById(record.getResource_id());
			User u = userDAO.findById(id);
			ResourceDTO rdto = new ResourceDTO();
			rdto.setId(r.getId());
			rdto.setUploader_name(r.getUser_name());
			rdto.setResource_name(r.getName());
			if (r.getStatus() == 0) {
				rdto.setStatus_name("待审核");
			} else {
				rdto.setStatus_name("已审核");
			}
			rdto.setTime(r.getTime());
			rdto.setType_name(r.getResource_type().getName());
			rdto.setSchool_name(u.getSchool().getName());
			rDtos.add(rdto);
		}
		pages.setPageList(rDtos);
		pages.setPage(page);
		return pages;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.service.UserServiceI#getMyRecord(int, com.crsp.utils.Page)
	 */
	@Override
	public Pages<RecordDTO> getMyRecord(int id, Page page) {
		Pages<RecordDTO> pages = new Pages<RecordDTO>();
		List<RecordDTO> rDtos = new ArrayList<RecordDTO>();
		// 获取相应的资源记录信息
		List<Record> records = recordDAO.queryRecordsByUser(page, id);
		for (Record r : records) {
			RecordDTO rdto = new RecordDTO();
			rdto.setId(r.getId());
			if (id == r.getUpload_user_id() && id == r.getDownload_user_id()) {
				rdto.setDelta(0);
			} else if (id == r.getDownload_user_id()) {
				rdto.setDelta(-r.getDelta());
			} else {
				rdto.setDelta(r.getDelta());
			}
			rdto.setTime(r.getTime());
			rdto.setResource_id(r.getResource_id());
			rDtos.add(rdto);
		}
		pages.setPageList(rDtos);
		pages.setPage(page);
		return pages;
	}

	/* (non-Javadoc)
	 * @see com.crsp.service.UserServiceI#getUserProfile(int)
	 */
	@Override
	public UserDTO getUserProfile(int userId) {
		UserDTO uDto = new UserDTO();
		User user = userDAO.findById(userId);
		uDto.setId(user.getId());
		uDto.setUser_name(user.getUser_name());
		uDto.setSchool_name(user.getSchool().getName());
		uDto.setDepartment_name(user.getDepartment().getName());
		uDto.setPoints(user.getPoints());
		uDto.setEmail(user.getEmail());
		uDto.setAvatar(user.getAvatar());
		return uDto;
	}

	/* (non-Javadoc)
	 * @see com.crsp.service.UserServiceI#getUser(int)
	 */
	@Override
	public User getUser(int userId) {
		return userDAO.findById(userId);
	}

	/* (non-Javadoc)
	 * @see com.crsp.service.UserServiceI#saveUser(com.crsp.entity.User)
	 */
	@Override
	public void saveUser(User user) {
		userDAO.update(user);
	}
}
