package com.dao.impl;

import java.util.List;

import com.dao.UsersDao;
import com.entity.Favorite;
import com.entity.Follower;
import com.entity.Post;
import com.entity.User;
import com.entity.Userinfo;
import com.utils.BeFollower;
import com.utils.UsersRanking;

public class UsersDaoDaoImpl implements UsersDao {

	@Override
	public List<UsersRanking> getUsersRanking() throws Exception {
		String sql="SELECT a.uid, a.uname, score FROM tb_userinfo a LEFT JOIN tb_userscore b ON a.uid = b.uid LEFT JOIN tb_user c ON b.uid = c.uid WHERE c.ualevel != 's' ORDER BY score DESC LIMIT 0, 10";
		List<UsersRanking> list = BaseDao.query(sql, UsersRanking.class);
		return list;
	}

	@Override
	public List<Follower> getBeFollowerUserIdByuid(int uid) throws Exception {
		String sql="select * from tb_follower where uid =?";
		List<Follower> list=BaseDao.query(sql, Follower.class,uid);
		return list;
	}

	@Override
	public List<Favorite> getFavoritePostByuid(int uid) throws Exception {
		String sql="select * from tb_favorite WHERE uid=?";
		List<Favorite> list=BaseDao.query(sql, Favorite.class,uid);
		return list;
	}

	@Override
	//根据用户id在用户信息表中查到用户的信息
	public BeFollower getUserInfoByUid(Integer uid) throws Exception {
		System.out.println(uid);
		String sql="select uname from tb_userinfo WHERE uid=?";
		System.out.println("---------------------------------------"+"成功执行到dao中"+"---------------------------------------");
		List<BeFollower> list;
		list=BaseDao.query(sql, BeFollower.class,uid);
		System.out.println("---------------------------------------"+list.get(0).getUname()+"---------------------------------------");
		return list.get(0);
	}

	@Override
	//根据用户id查到用户信息
	public User getgetUserbyUid(int uid) throws Exception {
		String sql="select * from tb_user WHERE uid=?";
		List<User> list;
		list=BaseDao.query(sql, User.class,uid);
		return list.get(0);
	}

}
