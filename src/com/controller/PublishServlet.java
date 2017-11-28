package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.PostService;
import com.service.impl.PostServiceImpl;


@WebServlet("/publish")
public class PublishServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public PublishServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		long startTime = System.currentTimeMillis();
		int i=6;  //�û�id
		String potitle=request.getParameter("potitle");
		String pocontent=request.getParameter("pocontent");
		int pocid=Integer.parseInt(request.getParameter("pocid"));
		
	//	ReplyService service=new ReplyServiceImpl();
		
		System.out.println("��ת�ɹ�");
		System.out.println(potitle);
		System.out.println(pocontent);
		System.out.println(pocid);
		
		PostService service=new PostServiceImpl();
		
		int result=service.insertPost(potitle, pocontent, i, pocid);
		
		if(result>=1){
			request.getRequestDispatcher("show").forward(request, response);
		}else{
			request.getRequestDispatcher("publish.jsp").forward(request, response);
		}
		long endTime = System.currentTimeMillis();
		long testTime = endTime - startTime;
		System.out.println(testTime/1000);

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
