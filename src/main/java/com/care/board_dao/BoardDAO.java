package com.care.board_dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
	public int writeSave(BoardDTO dto) {
		String sql = "insert into final_board(num,nick,title,content,pdate,hit) values(final_board_num.nextval,?,?,?,sysdate,0)";
		
		int result=0;
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getNick());
			ps.setString(2, dto.getTitle());
			ps.setString(3, dto.getContent());
			result = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		
		return result;
	}
	
	//수정
	
	//삭제
	
	//검색
	
	


}
