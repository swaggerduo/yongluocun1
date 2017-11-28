package com.service.impl;

import java.util.List;

import com.dao.UsersDao;
import com.dao.impl.UsersDaoDaoImpl;
import com.entity.Favorite;
import com.entity.Follower;
import com.entity.User;
import com.entity.Userinfo;
import com.service.UsersService;
import com.utils.BeFollower;
import com.utils.UsersRanking;

public class UsersServiceImpl implements UsersService {
	private UsersDao dao;
	public UsersServiceImpl() {
		dao = new UsersDaoDaoImpl();
	}
	@Override
	//��ѯ���е��û�
	public List<UsersRanking> getUsersRanking() {
		
		try {
			return	dao.getUsersRanking();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	@Override
	//ͨ���û�id��ȡ���û���ע��˭
	public List<Follower> getBeFollowerUserIdByuid(int uid) {
		try {
			return dao.getBeFollowerUserIdByuid(uid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	@Override
	//ͨ���û�id��ȡ���û����������
	public List<Favorite> getFavoritePostByuid(int uid) {
		try {
			return dao.getFavoritePostByuid(uid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	@Override
	//�����û�id���û���ϸ��Ϣ���в鵽��Ϣ
	public BeFollower getUserInfoByUid(Integer uid) {
		
		BeFollower beFollower;
		try {
			beFollower=dao.getUserInfoByUid(uid);
			return beFollower;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	@Override
	//�����û�id�鵽�û���Ϣ
	public User getUserbyUid(int uid) {
		try {
			return dao.getgetUserbyUid(uid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
