package com.yori.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.support.GenericApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.care.member_dao.MemberDTO;
import com.care.member_service.MUserCheckImpl;
import com.care.member_service.MemberRegisterImpl;
import com.care.member_service.MemberService;
import com.care.template.Constant;

public class MemberController {
	
	private MemberService ms;
	
	public MemberController() {
		System.out.println("MemberController ����");
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
			//�������
			HttpSession session = request.getSession();
			session.setAttribute("userId", request.getParameter("id"));
			System.out.println("���� ���� : "+session.getAttribute("userId"));
			return "redirect:successLogin";
		}
		return "redirct:login";
	}
	
	@RequestMapping("/successLogin")
	public String successLogin() {
		return "member/successLogin";
	}
	
	@RequestMapping("/register_form")
	public String reister_from() {
		System.out.println("resister_form ����");
		return "member/register";
	}
	
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String RegisterPost(UserVO user, Model model, RedirectAttributes rttr, HttpServletRequest request, HttpSession session) throws Exception {
		logger.info("ȸ������...");
		logger.info(user.toString());
		service.create(user);
		rttr.addFlashAttribute("authmsg" , "���Խ� ����� �̸��Ϸ� �������� 3");
		return "redirect:/";
	}
	


	
	


}
