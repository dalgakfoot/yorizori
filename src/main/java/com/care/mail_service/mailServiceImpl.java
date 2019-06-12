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
        
        System.out.println("���񽺷�����");

        String encPassword = passwordEncoder.encode(dto.getPw());
        dto.setPw(encPassword);
        //System.out.println("��ȣȭ�� ��й�ȣ : "+user.getUserPassword());

        dao.insertUser(dto);
        System.out.println(dto);
        System.out.println("///////////////////////  ����");
        String key = new TempKey().getKey(50,false);  // ����Ű ����

        dao.createAuthKey(dto.getMemberEmail(),key); //����Ű db ����
        //���� ����
        MailHandler sendMail = new MailHandler(mailSender);
        sendMail.setSubject("FAINT  ���� �̸��� ����]");
        sendMail.setText(
                new StringBuffer().append("<h1>��������</h1>").append("<a href='http://localhost:8080/user/emailConfirm?userEmail=").
		append(dto.getMemberEmail()).
		append("&memberAuthKey=").append(key).
		append("' target='_blank'>�̸��� ���� Ȯ��</a>").toString());
		        sendMail.setFrom("sososososo@gmail.com", "����񽺼��� ");


        sendMail.setTo(dto.getMemberEmail());
        sendMail.send();
    }

    //�̸��� ���� Ű ����
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
