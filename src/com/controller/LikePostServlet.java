package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Userinfo;
import com.service.FavoriteService;
import com.service.impl.FavoriteServiceImpl;

@WebServlet("/likePost")
public class LikePostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LikePostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		// ��ȡ����id
		int poid = 0;
		String tempStr = request.getParameter("poid");
		String action = request.getParameter("action");
		
		
		if(tempStr == null){
			request.getRequestDispatcher("/show").forward(request, response);
		}
		poid = Integer.parseInt(tempStr);
		
		// ��ȡ��½�û���Ϣ
		
		Object tempObj =  request.getSession().getAttribute("user");
		if(tempObj == null){
			response.sendRedirect("loginn.jsp");
			return;
		}
		Userinfo userinfo = (Userinfo)tempObj;
		int uid = userinfo.getUid();
		
		
		if("like".equals(action)){
			FavoriteService favoriteService  =  new FavoriteServiceImpl();
			int rsNum = favoriteService.likePostByPoid(uid , poid);
		}else {
			FavoriteService favoriteService  =  new FavoriteServiceImpl();
			int rsNum = favoriteService.unlikePostByPoid(uid , poid);
		}
		
		
		String successUri = "/showContent?poid=" + poid ;
		request.getRequestDispatcher(successUri).forward(request, response);
		
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
