package com.dao.impl;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

import com.dao.UserDao;
import com.entity.User;
import com.entity.Userinfo;

public class UserDaoImpl extends BaseDao implements UserDao{

	@Override
	public int addUser(User user) throws Exception {
		String sql = "insert into tb_user(username,password) values(?,?)";
		int num = BaseDao.update(sql, user.getUsername(),user.getPassword());
		return num;
		
	}



	@Override
	public Userinfo login(User user) throws Exception {
		String sql = "select a.uid,uname,sex,birthday,address,email,ualevel from tb_user a left join tb_userinfo b on a.uid=b.uid where username=? and password = ?";
		List<Userinfo> list = BaseDao.query(sql,Userinfo.class,user.getUsername(),user.getPassword());
		return list.get(0);
	}



	@Override
	public int register(String username,String password) throws Exception {
	
		String sql ="insert into tb_user(username,password) values(?,?)";
		return  BaseDao.update(sql, username,password);
		
	}



	@Override
	//ע��������Ϣ
	public int userInfo(int i, String uname, String sex,Date birthday, String address,String email) throws Exception {
		String sql ="insert into tb_userinfo(uid,uname,sex,birthday,address,email) values(?,?,?,?,?,?)";
		return BaseDao.update(sql,i, uname, sex,birthday, address,email);
	}



	@Override
	//ͨ���û����ҵ�id
	public int getIdByUsername(String username) throws Exception {
		String sql="SELECT * from tb_user WHERE username=?";
		List<User> list=query(sql,User.class,username);
		return list.get(0).getUid();
	}

	
}
