package exception;

public class ServiceContructException extends Exception {
    public ServiceContructException(String msg){super(msg);}
    public ServiceContructException(String msg, Exception cause){super(msg,cause);}
}
