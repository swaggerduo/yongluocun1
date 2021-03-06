package com.service.impl;

import java.util.List;

import com.dao.PostDao;
import com.dao.impl.PostDaoImpl;
import com.entity.Post;
import com.service.PostService;
import com.utils.PageUtil;

public class PostServiceImpl implements PostService {
	private PostDao dao;

	public PostServiceImpl() {
		dao = new PostDaoImpl();
	}

	@Override

	// 帖子分页方法 pageNum表示当前页码，pageSize表示每页显示的字数
	public PageUtil<Post> getRecentPostList(int pageNum, int pageSize) {
		int totalRecord = 0;
		try {
			List<Post> ls = dao.getRecentPostList(pageNum, pageSize);
			totalRecord = ls.size() + 1;
		} catch (Exception e) {
			e.printStackTrace();
		}

		PageUtil<Post> pageUtil = new PageUtil<Post>(pageNum, pageSize, totalRecord);
		int startIndex = pageUtil.getStartIndex();
		try {
			List<Post> list = dao.getRecentPostList(pageNum, pageSize);
			pageUtil.setList(list);
			return pageUtil;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public PageUtil<Post> getHotPostList(int pageNum, int pageSize) {
		int totalRecord = 0;
		try {
			List<Post> ls = dao.getAllPostList();
			totalRecord = ls.size();
		} catch (Exception e) {
			e.printStackTrace();
		}

		PageUtil<Post> pageUtil = new PageUtil<Post>(pageNum, pageSize, totalRecord);
		int startIndex = pageUtil.getStartIndex();
		try {
			List<Post> list = dao.getHotPostList(startIndex, pageSize);
			pageUtil.setList(list);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pageUtil;
	}

	// 根據action的值放斷帖子的類型，並進行查詢，返回值的一個帖子名字的Post集合
	public List<Post> getPostName(String action) {
		if (action.equals("showjava")) {
			try {
				return dao.getPostName(3);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		;
		if (action.equals("showc")) {
			try {
				return dao.getPostName(2);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		;
		if (action.equals("showc++")) {
			try {
				return dao.getPostName(1);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		;
		if (action.equals("show.net")) {
			try {
				return dao.getPostName(4);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		;
		if (action.equals("showjavaScript")) {
			try {
				return dao.getPostName(5);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		;
		if (action.equals("showHTML")) {
			try {
				return dao.getPostName(6);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		;
		if (action.equals("showCSS")) {
			try {
				return dao.getPostName(7);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		;
		if (action.equals("showpython")) {
			try {
				return dao.getPostName(8);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		;
		if (action.equals("showPHP")) {
			try {
				return dao.getPostName(9);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		;
		return null;
	}

	@Override

	// 发表帖子操作，根据传入的值进行insert操做
	public int insertPost(String potitle, String pocontent, int i, int pocid) {
		int result = 0;
		if (potitle == null || pocontent == null || pocid == 0) {
			return 0;
		} else {
			try {
				result = dao.insertPost(potitle, pocontent, i, pocid);
				return result;
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return 0;
	}

	@Override
	// 根据帖子id找到帖子的详细信息
	public Post getFavoritePostByUid(Integer poid) {
		try {
			return dao.getFavoritePostByUid(poid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	// 根据uid获取帖子内容
	public List<Post> getPostByUid(int uid) {
		try {
			return dao.getPostByUid(uid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	// 根据pid获取帖子内容
	public Post getPostByPoid(int poid) {
		try {
			return dao.getPostByPoid(poid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	// 点击数自增
	public int getAddPoclicknum(int poid) {
		System.out.println("service中的getAddPoclicknum方法");
		try {

			return dao.getAddPoclicknum(poid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return 0;
	}

	@Override
	public int delPostByPoid(int poid) {
		try {

			return dao.delPostByPoid(poid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return 0;
	}

	@Override
	public List<Post> searchPostListByKeyword(String searchKeyword) {
		try {
			searchKeyword = "%" + searchKeyword +"%";
			return dao.searchPostListByKeyword(searchKeyword);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}

}
