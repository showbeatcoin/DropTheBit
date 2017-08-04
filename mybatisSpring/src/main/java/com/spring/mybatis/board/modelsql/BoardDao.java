package com.spring.mybatis.board.modelsql;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.mybatis.board.model.vo.BoardVO;

@Repository("dao")// BoardDao dao = new BoardDao
public class BoardDao {
	
	@Autowired
	private SqlSession sqlSession ; // 마이바티스 내의 sqlSession
	//의존성주입
	
	//update insert select
	public List<BoardVO> listRow(){
		System.out.println("Dao listRow");
		return sqlSession.selectList("com.spring.board.listAll");
	}
}

