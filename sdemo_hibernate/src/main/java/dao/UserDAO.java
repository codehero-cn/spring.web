package spring.web.hibernate.dao;

import org.hibernate.SessionFactory;

import spring.web.entity.User;

/**
 * @author eleven
 *
 */
public class UserDAO implements IUserDAO {
	
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void addUser(User user){
		
		sessionFactory.getCurrentSession().save(user);
		
	}
}
