package cn.codehero.spring.web.hibernate.service;

import cn.codehero.spring.web.entity.User;
import cn.codehero.spring.web.hibernate.dao.IUserDAO;

public class UserManager implements IUserManager {
	
	private IUserDAO userDao;

	public void setUserDao(IUserDAO userDao) {
		this.userDao = userDao;
	}

	@Override
	public void addUser(User user) {
		userDao.addUser(user);
	}
}
