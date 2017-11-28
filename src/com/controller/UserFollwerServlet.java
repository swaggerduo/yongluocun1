package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Follower;
import com.entity.Userinfo;
import com.service.FollowerService;
import com.service.impl.FollowerServiceImpl;

/**
 * Servlet implementation class UserFollwerServlet
 */
@WebServlet("/follwer")
public class UserFollwerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UserFollwerServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		// ��ȡ����ע�û�id
		int bUid = 0;
		String tempStr = request.getParameter("uid");
		
		
		if(tempStr == null ){
			request.getRequestDispatcher("/show").forward(request, response);
		}
		bUid = Integer.parseInt(tempStr);
		
		
		// ��ȡ��½�û���Ϣ
		
		Object tempObj =  request.getSession().getAttribute("user");
		if(tempObj == null){
			response.sendRedirect("loginn.jsp");
			return;
		}
		Userinfo userinfo = (Userinfo)tempObj;
		int uid = userinfo.getUid();
		
		// �������ע�û��ǵ�¼�û�������ת�ظ�����Ϣҳ��
		if(bUid == uid){
			request.getRequestDispatcher("/getUserinfo?uid="+bUid).forward(request, response);
		}
		
		// ��ע�û�
		FollowerService followerService = new FollowerServiceImpl();
		int fNum = followerService.followUser(uid,bUid);
		
		
		request.getRequestDispatcher("/getUserinfo?uid="+bUid).forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
