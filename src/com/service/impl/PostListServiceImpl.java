package com.service.impl;

import java.util.List;

import com.dao.CateGoryDao;
import com.dao.PostListDao;
import com.dao.impl.CateGoryDaoImpl;
import com.dao.impl.PostListDaoImpl;
import com.entity.Post;
import com.entity.Postcate;
import com.service.PostListService;
import com.utils.PageUtil;

public class PostListServiceImpl implements PostListService {
	private PostListDao dao = null;
	
	public PostListServiceImpl() {
		 dao = new PostListDaoImpl();
	}
	@Override
	
	public PageUtil<Post> getPosts(int pageNum, int pageSize ,Integer pocid) {
		// TODO Auto-generated method stub
		int totalRecord = 0;
		try {
			List<Post> ls = dao.findPostByPocid(pocid);
			totalRecord = ls.size();
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		PageUtil<Post> pageUtil = new PageUtil<Post>(pageNum, pageSize, totalRecord);
		int startIndex = pageUtil.getStartIndex();
		try {
			List<Post> list = dao.getPostcate(startIndex, pageSize);
			pageUtil.setList(list);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return pageUtil;
	
	}
}
