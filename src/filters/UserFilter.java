package filters;

import dao.UserDao;
import modles.UserAccess;
import services.MainServiceInterface;
import services.ServiceContainer;
import util.Tools;
import util.UrlMatcher;
import sql.*;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "UserFilter", urlPatterns = "*")
public class UserFilter extends HttpFilter {
    @Override
    protected void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {
        boolean flag = true;

        try {
            Tools.printClassMessage(this, "Enter.");
            MainServiceInterface loginService = ServiceContainer.get().mainService();
            UserAccess access = loginService.active(request);



            if(access != null){
                Tools.printClassMessage(this, "UserAccess : " + access.getId());

                UserDao user = new UserDao();
                user.setId(access.getId());

                request.setAttribute("user", user);
            } else {
                request.setAttribute("user", null);
            }

            UrlMatcher matcher = new UrlMatcher(
                    ""
            );

            if(matcher.matches(request.getServletPath()) && access == null){
                Tools.printClassMessage(this, "Redirect to login.");
                Tools.sendRedirect(response,this.getServletContext(),"/login");
                flag = false;
            }


        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if(flag){
                chain.doFilter(request, response);
            }
        }
    }
}
