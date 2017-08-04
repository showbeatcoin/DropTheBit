package com.spring.mybatis.board.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.spring.mybatis.board.model.vo.BoardVO;
import com.spring.mybatis.board.modelsql.BoardDao;

@Service("service")
public class BoardService {

	@Resource(name="dao")
	private BoardDao dao ;

	public List<BoardVO> list(){
		System.out.println("service List");
		return dao.listRow() ;
	}
}
