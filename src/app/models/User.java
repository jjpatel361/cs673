package app.models;

import java.util.Date;

public class User {
	public String name;
	public java.util.Date loginTime;
	
	
	
	public User(String username, Date dt) {
		this.name = username;
		this.loginTime = dt; 
	}
	
	
}
