package controllers;

import dao.*;
import modles.*;
import request.*;
import services.*;
import util.*;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "controllers/loginServlet", urlPatterns = "/login")
public class loginServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			Tools.printClassMessage(this,"Enter.");

			UserLogin login = new UserLogin();
			Tools.fill(login,request);

			MainServiceInterface mainService = ServiceContainer.get().mainService();
			UserAccess access = mainService.login(login,response);



			if(access != null){
				Tools.printClassMessage(this,"Redirect to index.");
				Tools.sendRedirect(response,this.getServletContext(),"");
			}else{
				MessageDao message = new MessageDao();
				message.setMsg("login failed");
				request.setAttribute("msg",message);
				request.getRequestDispatcher("/login.jsp").forward(request,response);
			}
			Tools.printClassMessage(this,"POST");

		}catch (Exception e){
			e.printStackTrace();
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Tools.printClassMessage(this,"GET");
		MessageDao message = new MessageDao();
		message.setMsg("");
		request.setAttribute("msg",message);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
		dispatcher.forward(request, response);
	}
}
