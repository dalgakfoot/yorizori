package com.care.member_dto;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.care.member_dao.MemberDTO;
import com.care.template.Constant;

public class MemberDAO {

	public final int CHK_OK = 0;
	public final int CHK_NO = 1;
	
	private JdbcTemplate template;
	
	public MemberDAO() {
		this.template = Constant.template;
	}
	
	//유저 체크
	public int userCheck(String id, String pw) { 
		String sql = "select * from final_member where id='"+id+"' ";
		MemberDTO dto = null;
		try {
			dto = template.queryForObject(sql,
					new BeanPropertyRowMapper<MemberDTO>(MemberDTO.class));
		}catch(Exception e) {
			return CHK_NO;  //0
		}
		if(dto != null && dto.getPw().equals(pw))
			return CHK_OK; //1
		return CHK_NO; //0
		
	}
}
