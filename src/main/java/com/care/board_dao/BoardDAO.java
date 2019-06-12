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
	public ArrayList<BoardDTO> list(){
		String sql="select * from final_board order by num desc";
		
		ArrayList<BoardDTO> arrdto = new ArrayList<BoardDTO>();
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
			BoardDTO dto = new BoardDTO();
			dto.setNum(rs.getInt("num"));
			dto.setNick(rs.getString("nick"));
			dto.setTitle(rs.getString("title"));
			dto.setContent(rs.getString("content"));
			dto.setPdate(rs.getString("pdate"));
			dto.setHit(rs.getInt("hit"));
			arrdto.add(dto);
			}
			}catch (SQLException e) {
				e.printStackTrace();
			}
		
		return arrdto;
		
	}
	
	//내용보기
	public BoardDTO view(int num) {
		
		upHit(num);
		
		String sql = "select * from final_board where num="+num;
		BoardDTO dto = new BoardDTO();
		
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				dto.setNum(rs.getInt("num"));
				dto.setNick(rs.getString("nick"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setPdate(rs.getString("pdate"));
				dto.setHit(rs.getInt("hit"));
			}
			}catch (SQLException e) {
				e.printStackTrace();
			}
		
		return dto;
		
	}
	
	//조회수
	
	public void upHit(int num) {
		String sql = "update final_board set hit=hit+1 where num="+num;
		
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	
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
			System.out.println("result : "+result);
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		
		return result;
	}
	
	//수정보기
	public BoardDTO modiview(int num) {
		
		String sql = "select * from final_board where num="+num;
		BoardDTO dto = new BoardDTO();
		
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				dto.setNum(rs.getInt("num"));
				dto.setNick(rs.getString("nick"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setPdate(rs.getString("pdate"));
				dto.setHit(rs.getInt("hit"));
			}
			}catch (SQLException e) {
				e.printStackTrace();
			}
		
		return dto;
		
	}
	
	
	//수정저장
	public int modiSave(BoardDTO dto) {
		String sql = "update final_board set title=?, content=? where num=?";
		
		int result=0;
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getTitle());
			ps.setString(2, dto.getContent());
			ps.setInt(3, dto.getNum());
			result = ps.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}	
		
		return result;
		
	}
	
	//삭제
	
	//검색
	
	


}
