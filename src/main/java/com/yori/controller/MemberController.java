package com.yori.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.support.GenericApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.care.member_service.MUserCheckImpl;
import com.care.member_service.MemberService;
import com.care.template.Constant;

public class MemberController {
	
	private MemberService ms;
	
	public MemberController() {
		System.out.println("MemberController 角青");
		String configLocation = "classpath:applicationJDBC.xml";
		GenericXmlApplicationContext ctx = 
				new GenericXmlApplicationContext(configLocation);
		JdbcTemplate template = ctx.getBean("template",JdbcTemplate.class);
		Constant.template = template;
	}
	
	
	
	
	
	@RequestMapping(value="user_check", method=RequestMethod.POST)
	public String user_check(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		
		ms = new MUserCheckImpl();
		int result = ms.execute(model);
		if(result == 0) {
			//牢刘烹苞
			HttpSession session = request.getSession();
			session.setAttribute("userId", request.getParameter("id"));
			System.out.println("技记 积己 : "+session.getAttribute("userId"));
		}
		return "redirect:successLogin";
	}
}
