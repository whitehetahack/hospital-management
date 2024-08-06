package com.admin.servlet;

import java.io.IOException;

import com.dao.DoctorDao;
import com.db.DBConnect;
import com.entity.Doctor;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/addDoctor")
public class AddDoctor extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    
		try {
			
			String fullname=req.getParameter("fullName");
			String dob=req.getParameter("dob");
			String Qualification=req.getParameter("Qualification");
			String spec=req.getParameter("spec");
			String Email=req.getParameter("Email");
			String mobno=req.getParameter("mobno");
			String password=req.getParameter("password");
			
			Doctor d=new Doctor(fullname, dob, Qualification, spec, Email, mobno, password);
			DoctorDao dao= new DoctorDao(DBConnect.getConn());
			HttpSession session=req.getSession();
			
			if(dao.registerDoctor(d))
			{
				session.setAttribute("sucmsg", "Doctor Added Sucessful");
				resp.sendRedirect("admin/Doctor.jsp");
			}else
			{
				session.setAttribute("errormsg", "something wrong on server");
				resp.sendRedirect("admin/Doctor.jsp");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}
	

}
