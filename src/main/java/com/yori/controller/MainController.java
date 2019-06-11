package com.yori.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.care.board_service.BoardService;
import com.care.board_service.Board_SaveImpl;

@Controller
public class MainController {
	private BoardService bs;
	
	
	@RequestMapping("main")
	public String mian() {
		return "/default/main";
	}
	
	
	@RequestMapping("login")
	public String login() {
		return "/member/login";
	}

	
	//.......................�����Խ��� ����.............................
	@RequestMapping("board_list")	 	
	public String board() {				
		return "/board/list";
	}
	
	@RequestMapping("board_write")
	public String board_write(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("userId") == null) {
			return "redirect:login";
		}	
		return "/board/board_write";
	}
	
	@RequestMapping("view")   // �ش�Խñ� ����
	public String view() {
		return "/board/view";
	}
	
	@RequestMapping("board_delete")
	public String board_delete() {
		return "redirect:board";
	}
	
	@RequestMapping("board_modify")
	public String board_modify() {
		return "/board/board_info";
	}
	
	@RequestMapping("writeSave")
	public String writeSave(HttpServletRequest request, Model model) {
		model.addAttribute("request",request);
		bs = new Board_SaveImpl();
		int result = bs.execute(model);
		if(result==0) {
			return "redirect:board_write";
		}
		return "/board/list";
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
