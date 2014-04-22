/**
 * 
 */
package com.crsp.test.dao;

import java.io.IOException;
import java.sql.SQLException;

import org.dbunit.DatabaseUnitException;
import org.dbunit.dataset.IDataSet;
import org.dbunit.operation.DatabaseOperation;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.orm.hibernate4.SessionHolder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.support.TransactionSynchronizationManager;

import com.crsp.dao.UserDAO;
import com.crsp.entity.User;

/**
 * 用户DAO测试类
 * 
 * @author Administrator
 * 
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/spring-config.xml" })
public class TestUserDAO extends AbstractDbUnitTestCase {
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	@Autowired
	private UserDAO userDAO;// 用户表的DAO接口类

	@Before
	public void setUp() throws SQLException, IOException, DatabaseUnitException {
		// 此时最好不要使用Spring的Transactional来管理，因为dbunit是通过jdbc来处理connection，再使用spring在一些编辑操作中会造成事务shisu
		Session s = sessionFactory.openSession();
		TransactionSynchronizationManager.bindResource(sessionFactory,
				new SessionHolder(s));
		this.backupAllTable();
		IDataSet ds = createDateSet("t_data");
		DatabaseOperation.CLEAN_INSERT.execute(dbunitCon, ds);
	}

	@Test
	public void testGet() {
		User user = userDAO.findById(1);
		System.out.println(user.toString());
	}

	@After
	public void tearDown() throws DatabaseUnitException, SQLException,
			IOException {
		SessionHolder holder = (SessionHolder) TransactionSynchronizationManager
				.getResource(sessionFactory);
		Session s = holder.getSession();
		s.flush();
		TransactionSynchronizationManager.unbindResource(sessionFactory);
		//this.resumeTable();
	}
}
