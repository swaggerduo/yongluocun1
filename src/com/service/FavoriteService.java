package com.service;

import java.util.List;

import com.entity.Favorite;

public interface FavoriteService {

	List<Favorite> getFavoriteListByUid(int uid,int poid);

	int likePostByPoid(int uid, int poid);

	int delAllFavoriteByPoid(int poid);

	int unlikePostByPoid(int uid, int poid);

}
