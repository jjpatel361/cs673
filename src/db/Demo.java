package db;

public class Demo {

	public static void main(String[] args) throws Exception {
			
			Session s = new Session();
			
			java.sql.Connection c = s.connectDatabase();
			
			Database d = new Database(c);
		
			int user_id = d.fetchUserId("stevescott517@gmail.com");
			
			User u = new User(c, user_id, d);
			
			double balance = u.getBalance();
			
			System.out.println(balance);
			
			u.addCash(1);
			
			balance = u.getBalance();
			
			System.out.println(balance);
			
	}

}
