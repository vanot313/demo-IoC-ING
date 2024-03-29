package filters;

import dao.*;
import util.*;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "LogFilter", urlPatterns = "*")
public class LogFilter extends HttpFilter {
    @Override
    protected void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {
        Tools.printClassMessage(this,"url=" + request.getRequestURL() + " method=" + request.getMethod() + " servletPath=" + request.getServletPath());

        chain.doFilter(request, response);
    }

}
