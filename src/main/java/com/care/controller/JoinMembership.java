package com.care.controller;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.care.member_service.MailService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;



@Controller
public class JoinMembership {
	
	private Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
	
	
	
	
	@RequestMapping(value="/checkMail/", produces="application/text; charset=utf-8")
	@ResponseBody
	private String checkMail(@RequestParam String email) {
		return gson.toJson("seokrae533@gamil.com");
	}
	
	@Autowired
	private MailService mailService;
	
	@RequestMapping("join")
	public String join() {
		return "/member/join";
	}
	
	@RequestMapping(value="/sendMail", method=RequestMethod.POST, produces="application/json" )
	@ResponseBody
	private boolean sendMail(HttpSession session, @RequestParam String email) {
		int randomCode = new Random().nextInt(10000) + 1000;
		String joinCode = String.valueOf(randomCode);
		session.setAttribute("joinCode", joinCode);
		
		String subject = "회원가입 승인 번호 입니다.";
		StringBuilder sb = new StringBuilder();
		sb.append("회원가입 승인번호는 ").append(joinCode).append(" 입니다");
		
		return mailService.send(subject, sb.toString(), "seokrae533@gmail.com", email);
				
	}
}
