package kr.co.goodchoice.exception;

public class OnlineApplicationException extends RuntimeException {

	private static final long serialVersionUID = -5755826754122628086L;

	public OnlineApplicationException(String message) {
		super(message);
	}
	
	public OnlineApplicationException(String message, Throwable cause) {
		super(message, cause);
	}
	
}
