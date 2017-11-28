package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Comment;
import com.entity.Favorite;
import com.entity.Post;
import com.entity.Postcate;
import com.entity.User;
import com.entity.UserWithComment;
import com.entity.Userinfo;
import com.service.CommentService;
import com.service.FavoriteService;
import com.service.PostService;
import com.service.PostcateService;
import com.service.collectservice;
import com.service.impl.CommentServiceImpl;
import com.service.impl.FavoriteServiceImpl;
import com.service.impl.PostServiceImpl;
import com.service.impl.PostcateServiceImpl;
import com.service.impl.collectserviceimpl;

/**
 * Servlet implementation class showContent
 */
@WebServlet("/showContent")
public class showContent extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public showContent() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		int poid = Integer.parseInt(request.getParameter("poid"));
//		int poid = 1;
		Object tempObj =  request.getSession().getAttribute("user");
		if(tempObj == null){
			System.out.println(tempObj);
			response.sendRedirect("loginn.jsp");
			return;
		}
		Userinfo user = (Userinfo)tempObj;
		int uid = user.getUid();
		//��ȡ����
		PostService service =new PostServiceImpl(); 
		Post postContent= service.getPostByPoid(poid);
		
		//���ӵ����
		int i=service.getAddPoclicknum(poid);
		
		//��ȡ���ӱ�ǩ
		PostcateService postcateService = new PostcateServiceImpl();
		Postcate postcate = postcateService.getPostcateByPocid(postContent.getPocid());
		
		//��ȡ����
		CommentService commentService = new CommentServiceImpl();
		List<UserWithComment> commentList = commentService.getCommentListByPoid(postContent.getPoid());

		//��ȡ����������
		int commentNum = commentList.size();
		
		//��ȡ�û��Ƿ����ղظ���
		FavoriteService favoriteService = new FavoriteServiceImpl();
		List<Favorite> favoriteList = favoriteService.getFavoriteListByUid(uid,postContent.getPoid());
		boolean isFavorited = favoriteList.isEmpty();
		
		
		//������ת
		request.setAttribute("postContent", postContent);
		request.setAttribute("commentList", commentList);
		request.setAttribute("commentNum", commentNum);
		request.setAttribute("postcate", postcate);
		request.setAttribute("isFavorited", isFavorited);
		System.out.println(postContent.getPotitle());
		request.getRequestDispatcher("single.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
