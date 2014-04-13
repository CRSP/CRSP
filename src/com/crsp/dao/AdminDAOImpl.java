package com.crsp.dao;

import org.springframework.stereotype.Repository;
import com.crsp.entity.Admin;

/*管理员表的DAO实现类*/
@Repository("adminDAO")
public class AdminDAOImpl extends BaseDAOImpl<Admin> implements AdminDAO {

}
