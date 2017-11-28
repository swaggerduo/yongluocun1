package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Post;
import com.entity.Userinfo;
import com.service.CommentService;
import com.service.FavoriteService;
import com.service.PostService;
import com.service.impl.CommentServiceImpl;
import com.service.impl.FavoriteServiceImpl;
import com.service.impl.PostServiceImpl;

@WebServlet("/delPost")
public class DeletePostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	public DeletePostServlet() {
        super();
    }
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		
		// ��ȡ����id
		int poid = 0;
		String tempStr = request.getParameter("poid");
		if(tempStr == null){
			request.getRequestDispatcher("/show").forward(request, response);
		}
		poid = Integer.parseInt(tempStr);
		
		Object tempObj =  request.getSession().getAttribute("user");
		if(tempObj == null){
			response.sendRedirect("loginn.jsp");
			return;
		}
		Userinfo userinfo = (Userinfo)tempObj;
		int uid = userinfo.getUid();
		// ��ȡ����
		PostService postService =new PostServiceImpl(); 
		Post postContent= postService.getPostByPoid(poid);
		
		// �ж��û��Ƿ�Ϊ����������
		if(uid != postContent.getUid()){
			request.getRequestDispatcher("/showContent?poid=" + poid).forward(request, response);
		}
		
		// ɾ�������ӵ������ղصļ�¼
		FavoriteService favoriteService = new FavoriteServiceImpl();
		int fnum = favoriteService.delAllFavoriteByPoid(poid);
		
		
		// ɾ�����ӵ��������� 
		CommentService commentService = new CommentServiceImpl();
		int cnum = commentService.delAllCommentByPoid(poid);
		
		// ɾ������
		int pnum = postService.delPostByPoid(poid);
		
		request.getRequestDispatcher("/show").forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
