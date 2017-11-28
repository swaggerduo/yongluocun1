package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.PostListDao;
import com.dao.impl.PostListDaoImpl;
import com.entity.Post;
import com.entity.Postcate;
import com.service.CateGoryService;
import com.service.PostListService;
import com.service.impl.CateGoryServiceImpl;
import com.service.impl.PostListServiceImpl;
import com.utils.PageUtil;

/**
 * Servlet implementation class PostListServlet
 */
@WebServlet("/PostList")
public class PostListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Integer pocid = Integer.valueOf(request.getParameter("pocid"));
		
		String num=request.getParameter("pageNum");
		int pageNum = 1 ;
		if(num==null){
			pageNum=1;
		}else{
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
		}
		int pageSize = 5;
		PostListService service= new PostListServiceImpl();
		PostListDao dao = new PostListDaoImpl();
		List<Post> page = null;
		try {
			page =dao.findPostByPocid(pocid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		PageUtil<Post> pageUtil =service.getPosts(pageNum,pageSize,pocid);
		// 将list存入request中
		request.setAttribute("page", page);
		request.setAttribute("pageUtil", pageUtil);
		request.getRequestDispatcher("postlist.jsp").forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
