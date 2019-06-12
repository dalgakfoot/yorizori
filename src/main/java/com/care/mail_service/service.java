package com.care.mail_service;

import com.care.member_dto.MemberDTO;

public interface service {
	
	public void regist(MemberDTO dto);
	public MemberDTO userAuth(MemberDTO dto);
}
