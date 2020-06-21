package services;

import modles.UserAccess;
import request.UserLogin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface MainServiceInterface {
    UserAccess login(UserLogin login, HttpServletResponse response);
    UserAccess active(HttpServletRequest request);
}
