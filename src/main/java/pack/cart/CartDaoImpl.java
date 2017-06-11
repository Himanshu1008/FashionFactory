package pack.cart;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Repository
@EnableTransactionManagement
@Transactional
public class CartDaoImpl implements CartDao {
	@Autowired
	SessionFactory sessionFactory;
	public void insert(Cart c) {
		sessionFactory.getCurrentSession().save(c);
		
	}

	public void update(Cart c) {
		sessionFactory.getCurrentSession().update(c);
		
	}



	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}


	public Cart getCart(int id) {
		// TODO Auto-generated method stub
		return null;
	}



	public List<Cart> getAllCart() {
		// TODO Auto-generated method stub
		return null;
	}


}