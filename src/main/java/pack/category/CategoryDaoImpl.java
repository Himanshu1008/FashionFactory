package pack.category;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import pack.products.Product;
 
@Repository
@EnableTransactionManagement
@Transactional
public class CategoryDaoImpl implements CategoryDao {
	
	@Autowired
	SessionFactory sessionFactory;

	public void insert(Category c) {
	sessionFactory.getCurrentSession().save(c);
		
	}

	public void update(Category c) {
		sessionFactory.getCurrentSession().update(c);
		
	}

	public void delete(int pid) {
		sessionFactory.getCurrentSession().createQuery("delete from Category as p where p.categoryId = :id").setInteger("id", pid).executeUpdate();
		
	}

	public Category geCategory(int categoryId) {
		List<Category> l = sessionFactory.getCurrentSession().createQuery("from Category where categoryId = :id").setInteger("id", categoryId).list();
		if (l.size()>0)
		{
			return (Category)l.get(0);
		}
		else
		{
			return null;
		}
	}

	public List<Category> getAllCategory() {
		return sessionFactory.getCurrentSession().createQuery("from Category").list();
	}

	public CategoryDaoImpl() {
		// TODO Auto-generated constructor stub
	}

	

}
