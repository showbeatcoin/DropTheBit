package com.spring.mybatis.user.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.spring.mybatis.user.model.sql.UserDao;
import com.spring.mybatis.user.model.vo.UserVO;

@Service("userService")
public class UserService {
	
	@Resource(name="userDao")
	private UserDao dao ;

	public UserVO login(UserVO user){
		System.out.println("service Login");
		return dao.loginRow(user);
	}
}
