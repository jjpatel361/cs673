package app.models;

import java.util.Date;

public class UserBean {
	public String name;
	public java.util.Date loginTime;
	
	
	
	public UserBean(String username, Date dt) {
		this.name = username;
		this.loginTime = dt; 
	}
	
	
}
