package com.care.member_dto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.care.member_dao.MemberDTO;
import com.care.template.Constant;


public class MemberDAO {
		
	private String url="jdbc:oracle:thin:@192.168.137.150:1521:xe";
	private String user = "jsp";
	private String pwd = "1234";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	
	
	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	//유저 체크
	public int userCheck(String id, String pw) { 
		String sql = "select * from final_member where id = ?";
		int chk = 1;
		try {
			con = DriverManager.getConnection(url,user,this.pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				if(rs.getString("pw").equals(pw)) {
					chk = 0;
				}else { return chk = 1; }
			}else { return chk = 1; }
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return chk;
	}
	
	
	
	
	
	
	
	
	


}
