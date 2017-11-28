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

	// ���ӷ�ҳ���� pageNum��ʾ��ǰҳ�룬pageSize��ʾÿҳ��ʾ������
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

	// ����action��ֵ�Ŕ����ӵ���ͣ��K�M�в�ԃ������ֵ��һ���������ֵ�Post����
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

	// �������Ӳ��������ݴ����ֵ����insert����
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
	// ��������id�ҵ����ӵ���ϸ��Ϣ
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
	// ����uid��ȡ��������
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
	// ����pid��ȡ��������
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
	// ���������
	public int getAddPoclicknum(int poid) {
		System.out.println("service�е�getAddPoclicknum����");
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
