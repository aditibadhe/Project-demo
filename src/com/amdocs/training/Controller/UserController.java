package com.amdocs.training.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amdocs.training.dao.UserDAO;
import com.amdocs.training.dao.impl.UserDAOImpl;
import com.amdocs.training.model.User;

import sun.awt.RepaintArea;

@WebServlet("/register")
public class UserController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		String user_name = request.getParameter("user_name");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String reg_date = request.getParameter("reg_date");
		String upload_photo = request.getParameter("upload_photo");
		double phone_no = Double.parseDouble(request.getParameter("phone_no"));

		User user = new User(user_name, phone_no,email,address,reg_date,password,upload_photo);
		
		UserDAO dao = null;
		try {
			dao = (UserDAO) new UserDAOImpl();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		boolean saveUser = dao.saveUser(user);
		
	if(saveUser) {
			//out.println("User Saved Successfully!");
			//request.getRequestDispatcher("user_landing.jsp").forward(request, response);
		out.println("<script type=\"text/javascript\">");
		out.println("alert('User Registered Succcessfully !!');");
		out.println("location='index.jsp';");
		out.println("</script>");
		}
		else {
			out.println("try again");
		}
		

	}
}