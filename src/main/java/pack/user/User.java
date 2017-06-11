package pack.user;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;

@Entity
public class User {
	@Id@GeneratedValue(strategy=GenerationType.AUTO)
	private int userId;
	 @NotNull
	 @Email
	private String email;
	@Pattern(regexp="[^0-9]*")
	private String username;
	@NotNull
	@Size(min = 6, max = 15)
	private String password;
	
	private boolean active = true;
	
	private String role = "USER";
	
	public boolean isActive() {
		return active;
	}


	public void setActive(boolean active) {
		this.active = active;
	}


	public String getRole() {
		return role;
	}


	public void setRole(String role) {
		this.role = role;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getcPassword() {
		return cPassword;
	}


	public void setcPassword(String cPassword) {
		this.cPassword = cPassword;
	}


	@Transient
	private String cPassword;
	private String phone;
	private String address;

	public User() {
		// TODO Auto-generated constructor stub
	}


	public int getUserId() {
		return userId;
	}


	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	@Override
	public String toString() {
		return "User [userId=" + userId + ", email=" + email + ", username=" + username + ", password=" + password
				+ ", cPassword=" + cPassword + ", phone=" + phone + ", address=" + address + "]";
	}

}
