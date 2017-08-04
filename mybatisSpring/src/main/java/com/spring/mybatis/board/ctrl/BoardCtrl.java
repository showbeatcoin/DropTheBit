package com.spring.mybatis.board.ctrl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.mybatis.board.model.vo.BoardVO;
import com.spring.mybatis.board.service.BoardService;

@Controller
public class BoardCtrl {
	
	@Resource(name="service")
	private BoardService service ;
	
	@RequestMapping("/list.do")
	//사용자가 list.do를 칠때 아래메소드와 맵핑된다.
	public String list(Model model) {
		System.out.println("Ctrl list");
		List<BoardVO> list = service.list();
		model.addAttribute("lists", list);
		return "list" ;
	}
}
