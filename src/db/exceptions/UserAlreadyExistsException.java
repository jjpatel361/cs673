package db.exceptions;

public class UserAlreadyExistsException extends Exception {
	/**
	 * 
	 */
	private static final long serialVersionUID = -878560789447836566L;

	public UserAlreadyExistsException(){
		System.out.println("User already exists in the system");
	}
}
