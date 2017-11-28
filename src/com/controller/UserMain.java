package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.entity.Favorite;
import com.entity.Follower;
import com.entity.Post;
import com.entity.User;
import com.entity.Userinfo;
import com.service.PostService;
import com.service.UserinfoService;
import com.service.UsersService;
import com.service.impl.PostServiceImpl;
import com.service.impl.UserinfoServiceImpl;
import com.service.impl.UsersServiceImpl;
import com.utils.BeFollower;


@WebServlet("/showUserMain")
public class UserMain extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UserMain() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		//ʵ����������
		UsersService userService=new  UsersServiceImpl();
		PostService postService=new  PostServiceImpl();
		UserinfoService userinfoService = new UserinfoServiceImpl();
		
		Userinfo uinfo = null; 
		//��ȡ�û���Ϣ
		String tempStr =  request.getParameter("uid");
		int uid = 0; 
		if (tempStr != null ){
			
			uid = Integer.parseInt(tempStr);
			uinfo = userinfoService.getUserinfoByUid(uid);
			
		}else{
			uinfo = (Userinfo) request.getSession().getAttribute("user");
		}
		request.setAttribute("uinfo", uinfo);
		System.out.println(uinfo);
		//��ȡ���������
		List<Post> postList=  postService.getPostByUid(uid);
		request.getSession().setAttribute("postList", postList);
		request.getSession().setAttribute("showUid", postList.get(0).getUid());
		
		
		//��ȡ�ղص�����
		List<Favorite> poid=userService.getFavoritePostByuid(uid);
		List<Post> favoritePostName = new ArrayList<Post>();
		for (Favorite Favorite : poid) {
			favoritePostName.add(postService.getFavoritePostByUid(Favorite.getPoid()));
		}
		request.getSession().setAttribute("favoritePostName", favoritePostName);
		
		
		//��ȡ��ע����
		List<Follower> beFollowerUserId=userService.getBeFollowerUserIdByuid(uid);
		List<BeFollower> userInfo = new ArrayList<BeFollower>();
		for (Follower follower : beFollowerUserId) {
			userInfo.add(userService.getUserInfoByUid(follower.getFuid()));
		}
		request.setAttribute("userInfo", userInfo);
		
		
		request.getRequestDispatcher("userMain.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
