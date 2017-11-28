package com.dao;

import java.util.List;

import com.entity.Post;

public interface PostDao {
	List<Post> getRecentPostList(int startIndex, int pageSize) throws Exception;
	List<Post> getHotPostList(int startIndex, int pageSize) throws Exception;
	public List<Post> getAllPostList() throws Exception;
	List<Post> getPostName(int i)throws Exception;
	int insertPost(String potitle, String pocontent, int i, int pocid)throws Exception;
	Post getFavoritePostByUid(Integer poid)throws Exception;
	List<Post> getPostByUid(int uid)throws Exception;
	Post getPostByPoid(int poid)throws Exception;
	int getAddPoclicknum(int poid) throws Exception;
	int delPostByPoid(int poid) throws Exception;
	List<Post> searchPostListByKeyword(String searchKeyword) throws Exception;

}