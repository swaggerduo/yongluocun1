package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CateGoryDao;
import com.dao.impl.CateGoryDaoImpl;
import com.entity.Post;
import com.entity.Postcate;
import com.service.CateGoryService;
import com.service.PostService;
import com.service.impl.CateGoryServiceImpl;
import com.service.impl.PostServiceImpl;
import com.utils.PageUtil;

/**
 * Servlet implementation class CateGory
 */
@WebServlet("/CateGory")
public class CateGoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CateGoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 涔辩爜澶勭悊
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
				System.out.println("");
				String num=request.getParameter("pageNum");
				int pageNum = 1 ;
				if(num==null){
					pageNum=1;
				}else{
					pageNum = Integer.parseInt(request.getParameter("pageNum"));
				}
				int pageSize = 5;
				CateGoryService service= new CateGoryServiceImpl();
				
				PageUtil<Postcate> PageUtil =service.getProducts(pageNum,pageSize);
				// 灏唋ist瀛樺叆request涓�
				request.setAttribute("PageUtil", PageUtil);
				System.out.println(PageUtil.getTotalRecord());
				request.getRequestDispatcher("category.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
