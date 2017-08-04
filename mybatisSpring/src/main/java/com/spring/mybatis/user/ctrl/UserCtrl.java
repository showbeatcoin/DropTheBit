package com.spring.mybatis.user.ctrl;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.spring.mybatis.board.service.BoardService;
import com.spring.mybatis.user.model.vo.UserVO;
import com.spring.mybatis.user.service.UserService;

@Controller//객체생성
@SessionAttributes("loginUser")
public class UserCtrl {
	
	@Resource(name="userService")
	private UserService service ;
	
	@RequestMapping("/loginForm.do")
	public String loginForm() {
		System.out.println("Ctrl loginForm");
		return "loginForm";
	}
	
	@RequestMapping("/login.do")
	public String login(UserVO user, Model model) {
		System.out.println("ctrl login");
		UserVO result = service.login(user);
		String path = null;
		if(result != null) {
			//session.setAttribute("loginUser", result);
			model.addAttribute("loginUser",result);
			path = "redirect:/main.do";
		}else {
			path = "loginForm";
		}
		
		return path;
	}
	@RequestMapping("/logout.do")
	public String logout(SessionStatus status) {
		System.out.println("Ctrl logout");
		
		status.setComplete();
		return "redirect:/main.do";
		
		
	}
}












