package com.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.User;
import com.entity.Userinfo;
import com.service.UserService;
import com.service.impl.UserServiceImpl;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/Register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public RegisterServlet() {
        super();
       
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		   String username =request.getParameter("username");	
		   
		   String password =request.getParameter("password");
		   String sex =request.getParameter("sex");
		   String year =request.getParameter("year");
		   String month =request.getParameter("month");
		   if(Integer.parseInt(month)<10){
			    month = "0"+month;
		   }
		   
		   String day =request.getParameter("day");
		   if(Integer.parseInt(day)<10){
			    day = "0"+day;
		   }
		   String birth = year+"-"+month+"-"+day;
		   System.out.println(birth);
		   Date birthday = Date.valueOf(birth);
		   System.out.println(birthday);
		   String name =request.getParameter("name");
		   String email =request.getParameter("email");
		   String address=request.getParameter("address");
			
		    User user =new User();
            Userinfo info =new Userinfo();
            
            
			UserService register =new UserServiceImpl();
			
			 
			int i = register.register(username,password);
            if(i>0){
			      int j=register.userInfo(username,name, sex,birthday,address,email);
			      if(j>0){
			    	  request.getRequestDispatcher("loginn.jsp").forward(request, response);
			    	  
			      }else{
			    	  System.out.println("娉ㄥ唽澶辫触锛�");
			      }
            }	
		
	}

	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
