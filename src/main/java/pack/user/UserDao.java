package pack.user;

import java.util.List;



public interface UserDao {

	public void insert(User u);
	public void update(User u);
	public void delete(int pid);
	
	public User getUser( int pid );
	public List<User> getAllUser();
}
