package com.care.mail_service;

import javax.inject.Inject;

import org.springframework.mail.javamail.JavaMailSender;

import com.care.mail.MailHandler;
import com.care.mail.TempKey;
import com.care.member_dto.MemberDTO;


public class mailServiceImpl implements service{
	
	@Inject
    private JavaMailSender mailSender;


    @Override
    public void regist(MemberDTO dto) {
        
        System.out.println("서비스레지스");

        String encPassword = passwordEncoder.encode(dto.getPw());
        dto.setPw(encPassword);
        //System.out.println("암호화된 비밀번호 : "+user.getUserPassword());

        dao.insertUser(dto);
        System.out.println(dto);
        System.out.println("///////////////////////  찍히");
        String key = new TempKey().getKey(50,false);  // 인증키 생성

        dao.createAuthKey(dto.getMemberEmail(),key); //인증키 db 저장
        //메일 전송
        MailHandler sendMail = new MailHandler(mailSender);
        sendMail.setSubject("FAINT  서비스 이메일 인증]");
        sendMail.setText(
                new StringBuffer().append("<h1>메일인증</h1>").append("<a href='http://localhost:8080/user/emailConfirm?userEmail=").
		append(dto.getMemberEmail()).
		append("&memberAuthKey=").append(key).
		append("' target='_blank'>이메일 인증 확인</a>").toString());
		        sendMail.setFrom("sososososo@gmail.com", "서어비스센터 ");


        sendMail.setTo(dto.getMemberEmail());
        sendMail.send();
    }

    //이메일 인증 키 검증
    @Override
    public MemberDTO userAuth(MemberDTO user) {
        MemberDTO dto =new MemberDTO();
        System.out.println(user+"user");
        dto = dao.chkAuth(user);
   
        if(dto!=null){
            try{
                System.out.println(dto+"vo");
                dao.userAuth(user);
                dao.successAuth(dto);
            }catch (Exception e) {
                e.printStackTrace();
            }}
        return dto;
    }
}
