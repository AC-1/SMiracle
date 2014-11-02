package com.order.test;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.order.mode.Car;
import com.order.service.CarService;
import com.order.util.SecretUtil;
import com.order.util.email.Email;
import com.order.util.email.MailUtil;

 
 
 
public class UserTest {
 
//private CarService carService;
private MailUtil mailUtil;
     
    @Before
    public void before(){                                                                    
        @SuppressWarnings("resource")
        ApplicationContext context = new ClassPathXmlApplicationContext(new String[]{"classpath:conf/dataSource.xml"
                ,"classpath:conf/dispatcher-servlet.xml" ,"classpath:conf/service-transaction.xml"});
//        carService = (CarService) context.getBean("CarService");
        mailUtil = (MailUtil) context.getBean("mailUtil");
    }
     
//    @Test
    public void addUser(){
//        User user = new User();
//        user.setNickname("你好");
//        user.setState(2);
//        System.out.println(userService.insertUser(user));
    	
//    	Car car = carService.findByKey("1");
//    	System.out.println(car.toString());
    }
    
    
    /** 發送Email程式測式*/
//    @Test
    public void sendEmail(){
    	try {
    		StringBuffer toSb = new StringBuffer();
    		toSb.append("joshua0207@gmail.com");
    		toSb.append(";");
    		toSb.append("kingg1234@yahoo.com.tw");
//    		toSb.append(";");
    		
    		Email email = new Email();
    		email.setMailFrom("joshua0207@gmail.com");
    		email.setMailTo(toSb.toString());
    		email.setSubject("主旨......");
    		
    		StringBuffer html = new StringBuffer();
    		html.append("<h2>Welcome to Stream</h2><br>");
            html.append("<h3>Please click the Link to reset Password</h3><br>");
            html.append("<a href='" + "http://localhost/mailVerify/" + email.getSubject() + "'><h1>Click Here<h1></a><br>");
            email.setContent("內容。。。。。。"+html.toString());
            List<File> filesList = new ArrayList<File>();
            String filePath = "C:/logs/logs.log";
            String filePath1 = "C:/logs";
            File file = new File(filePath);
            File file2 = new File(filePath1,"logs.log.2014-07-31");
            filesList.add(file);
            filesList.add(file2);
            email.setFiles(filesList);
            mailUtil.sendHTMLMail(email);
//            mailUtil.sendAttachmentMail(email);
//            mailUtil.sendMail(email);
//            mailUtil.sendNotReceive(email);
    		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    
    
    /** 查加解密處理*/
    @Test
    public void decode(){
    	try {
    		SecretUtil sert = new SecretUtil();
    		//密碼加密
    		String encryptPwd = sert.encrypt("222");
    		System.out.println(encryptPwd);
			//密碼解密
    		String decodePwd = sert.decrypt(encryptPwd);
			System.out.println(decodePwd);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			
		}
    }
}