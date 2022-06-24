package services;

import modles.*;
import request.*;
import util.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.html.HTML;

public class MainService implements MainServiceInterface {

    public MainService(){
        Tools.printClassMessage(this,"init");
    }

    public UserAccess login(UserLogin login, HttpServletResponse response){
        Tools.printClassMessage(this, "login start");

        String id = login.getId();
        String password = login.getPassword();

        Tools.printClassMessage(this,"id = " + id);
        Tools.printClassMessage(this,"password = " + password);

        if(!id.equals("jxw")){
            return null;
        }
        if(!password.equals("123456")){
            return null;
        }

        UserAccess access = createUserAccess(id);
        response.addCookie(new Cookie("token", access.getToken()));
        Tools.printClassMessage(this, "Create user access.");


        return access;
    }

    public UserAccess active(HttpServletRequest request){
        String token = null;
        Cookie[] cookies = request.getCookies();

        if(cookies == null)
            return null;
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("token")) {
                token = cookie.getValue();
                break;
            }
        }

        if(token == null)
            return null;

        Tools.printClassMessage(this,"cookie token = " + token);

        UserAccess access = createUserAccess("jxw");
        access.setToken(token);

        return access;
    }

    private UserAccess createUserAccess(String id){
        UserAccess access = new UserAccess();
        access.setId(id);
        access.setToken(Tools.makeToken());
        return access;
    }
}
