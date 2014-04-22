/**
 * 
 */
package com.crsp.service;

import java.util.List;

import com.crsp.dto.RecordDTO;
import com.crsp.dto.ResourceDTO;
import com.crsp.dto.UserDTO;
import com.crsp.entity.User;

/**
 * @author Administrator
 *
 */
public class UserServiceImpl implements UserServiceI{

	/* (non-Javadoc)
	 * @see com.crsp.service.UserServiceI#login(java.lang.String, java.lang.String)
	 */
	@Override
	public UserDTO login(String id, String password) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.crsp.service.UserServiceI#register(com.crsp.entity.User)
	 */
	@Override
	public UserDTO register(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.crsp.service.UserServiceI#getMyUpload(int, int)
	 */
	@Override
	public List<ResourceDTO> getMyUpload(int userId, int page) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.crsp.service.UserServiceI#getMyDownload(int, int)
	 */
	@Override
	public List<ResourceDTO> getMyDownload(int userId, int page) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.crsp.service.UserServiceI#getMyRecord(int, int)
	 */
	@Override
	public List<RecordDTO> getMyRecord(int userId, int page) {
		// TODO Auto-generated method stub
		return null;
	}

}
