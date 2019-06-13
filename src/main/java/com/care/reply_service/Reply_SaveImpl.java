package com.care.reply_service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.care.reply_dao.ReplyDAO;
import com.care.reply_dto.ReplyDTO;

public class Reply_SaveImpl implements ReplyService{

	@Override
	public int execute(Model model) {
		ReplyDAO dao = new ReplyDAO();
		ReplyDTO dto = new ReplyDTO();
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		dto.setList_num(Integer.parseInt(request.getParameter("list_num")));
		dto.setNick(request.getParameter("nick"));
		dto.setContent(request.getParameter("content"));
		
		dao.replySave(dto);
		
		return 0;
	}

}
