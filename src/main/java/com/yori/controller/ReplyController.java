package com.yori.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReplyController {
	
	@RequestMapping("reply_write")
	public String reply_write() {
		return "/reply/reply_write";
	}
	
	@RequestMapping("replySave")
	public String replySave(HttpServletRequest request, Model model) {
		
		return "/reply/reply_write";
	}

}
