package com.dao;

import java.util.List;

import com.entity.Favorite;

public interface FavoriteDao {

	List<Favorite> getFavoriteListByUid(int uid,int poid) throws Exception;

	int likePostByPoid(int uid, int poid)throws Exception;

	int delAllFavoriteByPoid(int poid) throws Exception;

	int unlikePostByPoid(int uid, int poid) throws Exception;

}
