package com.care.board_service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.care.board_dao.BoardDAO;

public class Board_DelImpl implements BoardService{

	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		BoardDAO dao = new BoardDAO();
		
		int result = dao.delete(num);
		
		return result;
	}

}
