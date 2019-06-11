package com.care.board_service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.care.board_dao.BoardDAO;
import com.care.board_dto.BoardDTO;

public class Board_ModiSaveImpl implements BoardService{

	@Override
	public int execute(Model model) {
		BoardDAO dao = new BoardDAO();
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		BoardDTO dto = new BoardDTO();
		
		dto.setNum(Integer.parseInt(request.getParameter("num")));
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));
		
		int result = dao.modiSave(dto);
		return result;
	}

}
