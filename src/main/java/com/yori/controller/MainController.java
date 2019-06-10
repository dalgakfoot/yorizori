package com.yori.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	
	@RequestMapping("main")
	public String mian() {
		return "/default/main";
	}
	
	
	@RequestMapping("login")
	public String login() {
		return "/member/login";
	}

	
	//.......................�����Խ��� ����.............................
	@RequestMapping("free_list")	 	
	public String board() {				
		return "/board/free_list";
	}
	
	@RequestMapping("board_write")
	public String board_write(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("userId") == null) {
			return "redirect:login";
		}	
		return "/board/board_write";
	}
	
	@RequestMapping("board_info")   // �ش�Խñ� ����
	public String board_info() {
		return "/board/board_info";
	}
	
	@RequestMapping("board_delete")
	public String board_delete() {
		return "redirect:board";
	}
	
	@RequestMapping("board_modify")
	public String board_modify() {
		return "/board/board_info";
	}
	//.......................�����Խ��� ��.............................
	
	
	
	//.......................�����ǰԽ��� ����..........................
	
	//.......................�����ǰԽ��� ��............................
	
	
	
	
	//.......................��� ���� ..............................
	@RequestMapping("reply_save")
	public String reply_save() {
		return "/reply/reply_list";
	}
	//.......................��� �� ..............................
	
	
	
	
}
