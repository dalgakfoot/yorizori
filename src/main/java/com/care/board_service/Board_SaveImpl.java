package com.care.board_service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.care.board_dao.BoardDAO;
import com.care.board_dto.BoardDTO;

public class Board_SaveImpl implements BoardService{

	@Override
	public int execute(Model model) {
		BoardDAO dao = new BoardDAO();
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		BoardDTO dto = new BoardDTO();
		
		dto.setNick(request.getParameter("nick"));
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));
		
		int result = dao.writeSave(dto);
		return result;
	}

}
