package pack.category;

import java.util.List;

import pack.products.Product;

	public interface CategoryDao {

		public void insert(Category c);
		public void update(Category c);
		public void delete(int pid);
		
		public Category geCategory( int pid );
		public List<Category> getAllCategory();
		

		
	}

