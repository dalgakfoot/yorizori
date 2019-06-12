package com.yori.controller;

import java.io.File;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.care.board_service.BoardService;
import com.care.board_service.Board_ListImpl;
import com.care.board_service.Board_ModiSaveImpl;
import com.care.board_service.Board_ModiViewImpl;
import com.care.board_service.Board_SaveImpl;
import com.care.board_service.Board_ViewImpl;
import com.oreilly.servlet.MultipartRequest;

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

	
	//.......................자유게시판 시작.............................
	@RequestMapping("board_list")	 	
	public String board(Model model) {	
		bs = new Board_ListImpl();
		bs.execute(model);
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
	
	@RequestMapping("view")   // 해당게시글 보기
	public String view(HttpServletRequest request, Model model) {
		model.addAttribute("request",request);
		bs = new Board_ViewImpl();
		bs.execute(model);
		return "/board/view";
	}
	
	@RequestMapping("board_delete")
	public String board_delete() {
		return "redirect:board";
	}
	
	@RequestMapping(value="board_modify", method=RequestMethod.GET)
	public String board_modify(HttpServletRequest request, Model model) {
		model.addAttribute("request",request);
		bs = new Board_ModiViewImpl();
		bs.execute(model);		
		return "/board/board_modify";
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
	
	@RequestMapping("modiSave")
	public String modiSave(HttpServletRequest request, Model model) {
		
		model.addAttribute("request",request);
		bs = new Board_ModiSaveImpl();
		int result = bs.execute(model);
		if(result==0) {
			return "redirect:board_modify";
		}
		
		return "redirect:board_list";
	}
	
	//.......................자유게시판 끝.............................
	
	
	
	//.......................레시피게시판 시작..........................
	
	//.......................레시피게시판 끝............................
	
	
	
	
	//.......................댓글 시작 ..............................
	@RequestMapping("reply_save")
	public String reply_save() {
		return "/reply/reply_list";
	}
	//.......................댓글 끝 ..............................
	

	
	@RequestMapping(value= "/fileUpDown")
	public String fileUD() {
		return "yorizori/src/main/webapp/smarteditor/photo_uploader/popup/photo_uploader.jsp";
	}
	
	

}
