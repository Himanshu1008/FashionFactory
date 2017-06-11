package pack.products;

import java.util.List;

public interface ProductDao {

	public void insert(Product p);
	public void update(Product p);
	public void delete(int pid);
	
	public Product getProduct( int id );
	public List<Product> getAllProducts();
	public Product getProductWithMaxId();
}
