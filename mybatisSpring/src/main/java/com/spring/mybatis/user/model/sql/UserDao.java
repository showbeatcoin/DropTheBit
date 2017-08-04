package com.spring.mybatis.user.model.sql;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.mybatis.user.model.vo.UserVO;

@Repository("userDao")
public class UserDao {
	
	@Autowired
	private SqlSession sqlSession ;
	
	public UserVO loginRow(UserVO user) {
		System.out.println("Dao loginRow");
		return sqlSession.selectOne("com.spring.acorn.mapper.user.login",user);
		//첫번쨰파라미더는 mapper에서 id식별자, 두번째는 파라미터를담고있는 객체를넘겨주는것
	}
}
