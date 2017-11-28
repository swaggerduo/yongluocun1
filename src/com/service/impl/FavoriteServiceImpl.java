package com.service.impl;

import java.util.List;

import com.dao.FavoriteDao;
import com.dao.impl.FavoriteDaoImpl;
import com.entity.Favorite;
import com.service.FavoriteService;

public class FavoriteServiceImpl implements FavoriteService {

	private FavoriteDao dao = null ;
	public FavoriteServiceImpl() {
		dao = new FavoriteDaoImpl();
	}
	@Override
	public List<Favorite> getFavoriteListByUid(int uid,int poid) {
		try {
			return dao.getFavoriteListByUid(uid,poid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public int likePostByPoid(int uid, int poid) {

		try {
			return dao.likePostByPoid(uid,poid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	@Override
	public int delAllFavoriteByPoid(int poid) {
		try {
			return dao.delAllFavoriteByPoid(poid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	@Override
	public int unlikePostByPoid(int uid, int poid) {
		try {
			return dao.unlikePostByPoid(uid,poid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

}
