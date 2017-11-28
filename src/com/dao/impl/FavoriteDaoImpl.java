package com.dao.impl;

import java.util.List;

import com.dao.FavoriteDao;
import com.entity.Favorite;

public class FavoriteDaoImpl implements FavoriteDao {

	@Override
	public List<Favorite> getFavoriteListByUid(int uid,int poid) throws Exception {
		String sql = "select * from tb_favorite where uid = ? and poid = ?";
		return BaseDao.query(sql, Favorite.class, uid,poid);
	}

	@Override
	public int likePostByPoid(int uid, int poid) throws Exception {
		String sql = "insert into tb_favorite(uid,poid) values(?,?)";
		return BaseDao.update(sql, uid,poid);
	}

	@Override
	public int delAllFavoriteByPoid(int poid) throws Exception {
		String sql = "delete from tb_favorite where poid = ?";
		return BaseDao.update(sql, poid);
	}

	@Override
	public int unlikePostByPoid(int uid, int poid) throws Exception {
		String sql = "delete from tb_favorite where uid = ? and poid =?";
		return BaseDao.update(sql, uid,poid);
	}

}
