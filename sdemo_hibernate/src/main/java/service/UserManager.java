package spring.web.hibernate.service;

import spring.web.entity.User;
import spring.web.hibernate.dao.IUserDAO;

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
