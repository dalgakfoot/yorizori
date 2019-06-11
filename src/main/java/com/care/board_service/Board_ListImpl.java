package com.care.board_service;

import org.springframework.ui.Model;

import com.care.board_dao.BoardDAO;

public class Board_ListImpl implements BoardService{

	@Override
	public int execute(Model model) {
		BoardDAO dao = new BoardDAO();
		model.addAttribute("list",dao.list());
		return 0;
	}

}
