package pack.user;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Repository
@EnableTransactionManagement
@Transactional
public class UserDaoImpl implements UserDao{

	@Autowired
	SessionFactory sessionFactory;
	

	public void insert(User u) {
		sessionFactory.getCurrentSession().save(u);
	}

	public void update(User u) {
		// TODO Auto-generated method stub
		
	}

	public void delete(int pid) {
		// TODO Auto-generated method stub
		
	}

	public User getUser(int pid) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<User> getAllUser() {
		return sessionFactory.getCurrentSession().createQuery("from User").list();
	}
}
