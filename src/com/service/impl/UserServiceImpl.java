package com.service.impl;

import java.sql.Date;
import java.sql.Timestamp;

import com.dao.UserDao;
import com.dao.impl.UserDaoImpl;
import com.entity.User;
import com.entity.Userinfo;
import com.service.UserService;

public class UserServiceImpl implements UserService{

	
	private UserDao dao;
	public UserServiceImpl() {
		dao = new UserDaoImpl();
	}
	@Override
	public Userinfo login(User user) {
		try {
			return dao.login(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public int register(String username,String password) {
          int i;
		try{
			i= dao.register(username,password);
			return i;
	    }catch(Exception e){
	    	 e.printStackTrace();
	    }
		return 0;
	}
	@Override
	public int userInfo(String username,String uname, String sex,Date birthday, String address,String email) {
		  
	        int i;
	        
			try {
				i = dao.getIdByUsername(username);
				return dao.userInfo(i,uname, sex,birthday,address,email);
			} catch (Exception e1) {
				e1.printStackTrace();
			}
		return 0;
	}

	
}
