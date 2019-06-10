package com.care.board_dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.care.board_dto.BoardDTO;

public class BoardDAO {
	
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@192.168.60.128:1521:xe";
	private String user = "jsp";
	private String pwd ="1234";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public BoardDAO() {
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	
	//리스트
//	public ArrayList<BoardDTO> list(){
//		String sql="select * from final_board order by num desc";
//		
//		try {
//			
//			
//		}
//		
//	}
	
	//내용보기
	
	
	//저장
	
	//수정
	
	//삭제
	
	//검색
	
	


}
