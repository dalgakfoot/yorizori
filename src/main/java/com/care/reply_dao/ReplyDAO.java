package com.care.reply_dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.care.reply_dto.ReplyDTO;

public class ReplyDAO {
	
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	private String user = "jsp";
	private String pwd ="1234";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public ReplyDAO() {
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public int replySave(ReplyDTO dto) {
String sql = "insert into final_reply(list_num,num,nick,content,pdate,idgroup,indent,step) values(?,final_reply_seq.nextval,?,?,sysdate,final_reply_seq.currval,0,0)";
		
		int result=0;
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			
			result = ps.executeUpdate();
			System.out.println("result : "+result);
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		
		return result;
	}

}
