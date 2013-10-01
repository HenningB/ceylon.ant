package ceylon.ant;

public class AntHelperException extends RuntimeException {
	
	private static final long serialVersionUID = 1L;
	
	public AntHelperException(String message) {
        super(message);
    }
	
    public AntHelperException(String message, Throwable cause) {
        super(message, cause);
    }
    
}
