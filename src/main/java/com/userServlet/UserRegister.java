package com.userServlet;

import java.io.IOException;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/register")
public class UserRegister extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		try {
			String fullname =req.getParameter("fullname");
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			
			User u = new User(fullname,email,password);
			
			HttpSession session=req.getSession();
			UserDao dao=new UserDao(DBConnect.getConn());
			
			boolean f=dao.register(u);
			if(f==true)
			{
				session.setAttribute("sucmsg", "Registeration succesfully");
				resp.sendRedirect("signup.jsp");
			}else
			{
				session.setAttribute("errormsg", "Something wrong on server");
				resp.sendRedirect("signup.jsp");
			
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

	
}
