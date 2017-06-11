package pack.cart;

import java.util.List;



public interface CartDao {
	
public void insert(Cart c);
public void delete(int id);
public void update(Cart c);


public Cart getCart( int id );
public List<Cart> getAllCart();
}
