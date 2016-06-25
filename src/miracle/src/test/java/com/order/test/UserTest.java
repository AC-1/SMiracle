package com.order.test;

import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.miracle.common.Email;
import com.miracle.common.MailUtil;
import com.miracle.common.SecretUtil;
import com.miracle.common.TimeMachine;
import com.miracle.dao.ChildrenQTrsDAO;
import com.miracle.service.ChildrenService;
import com.miracle.service.CollegeService;

 
 
 
public class UserTest {
 
//private CarService carService;
private ChildrenQTrsDAO childrenQueryDAO;
private ChildrenService childrenService;
private CollegeService collegeService;
private MailUtil mailUtil;
private TimeMachine timeMachine;

private final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
     
    @Before
    public void before(){                                                                    
        @SuppressWarnings("resource")
        ApplicationContext context = new ClassPathXmlApplicationContext(new String[]{"classpath:conf/root-context.xml"});
//        carService = (CarService) context.getBean("CarService");
//        childrenQueryDAO = (ChildrenQueryDAO) context.getBean("childrenQueryDAO");
//        childrenService = (ChildrenService) context.getBean("childrenServiceImpl");
          collegeService = (CollegeService) context.getBean("collegeServiceImpl");
//        mailUtil = (MailUtil) context.getBean("mailUtil");
          timeMachine = (TimeMachine) context.getBean("timeMachine");
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
//    @Test
    public void decode(){
    	try {
    		UUID uuid = UUID.randomUUID();
    		System.out.println(uuid.toString().length());
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
    
    
//    @Test
    public void Test(){
//    	PeopleVO peopleVO = childrenQueryDAO.findPeopleData("P_222222222");
    	
//    	List<Contact> contact = childrenQueryDAO.findContact("P_222222222");
//    	System.out.println(contact);
    	
//    	childrenService.excelImport();
    	for(int i=0;i<15;i++){
    		TimeMachine timeMachine = new TimeMachine();
    		System.out.println(timeMachine.newRandomUUID());
    	}
    }
    
    
    //學生匯入
//    @Test
    public void collegeImport(){
    	
    	boolean isCorrect = collegeService.excelImport();
    	if(isCorrect){
    		System.out.println("匯入成功");
    	}else{
    		System.out.println("匯入失敗");
    	}
    }
    
    
    
    //學生報名
//    @Test
    public void setCampActivitySignup(){
    	
    	String activityId = "activity_16021615393155001";//那個營會
    	boolean isCorrect = collegeService.setCampActivitySignup(activityId);
    	if(isCorrect){
    		System.out.println("報名成功");
    	}else{
    		System.out.println("報名失敗");
    	}
    }
    
    @Test
    public void TEST(){
    	try {

//    		Date dt =sdf.parse("11:49:00");
    		
    		/*Calendar calendar = Calendar.getInstance();
    		calendar.setTime(new Date());
    		calendar.set(Calendar.HOUR_OF_DAY, 8); //將hour改成下午六點
    		calendar.set(Calendar.MINUTE, 00); 
    		calendar.set(Calendar.SECOND, 00);
    		calendar.set(Calendar.MILLISECOND, 00);
    		Date start=calendar.getTime();
    		System.out.println(start);
    		
    		calendar.setTime(new Date());
    		calendar.set(Calendar.HOUR_OF_DAY, 10); //將hour改成下午六點
    		calendar.set(Calendar.MINUTE, 00); 
    		calendar.set(Calendar.SECOND, 00); 
    		calendar.set(Calendar.MILLISECOND, 00);
    		Date end=calendar.getTime();
    		System.out.println(end);*/
    		
    		//判斷8點到10點
    		Date start=timeMachine.changeTime(new Date(), 8, 00, 00);
    		Date end=timeMachine.changeTime(new Date(), 10, 00, 00);
    		
    		Date date = sdf.parse("2016-06-25 10:00:00");
			boolean isTime = timeMachine.isDateBetween(date, start, end);
//			System.out.println(isTime);
			
			//判斷12:30點到14:30點
			Date start2=timeMachine.changeTime(new Date(), 12, 30, 00);
    		Date end2=timeMachine.changeTime(new Date(), 14, 30, 00);
    		
    		Date date2 = sdf.parse("2016-06-25 14:30:00");
			boolean isTime2 = timeMachine.isDateBetween(date2, start2, end2);
			System.out.println(isTime2);
    		
//    		c.set(Calendar.AM_PM, Calendar.PM);             //將hour改成下午六點 
//    		c.set(Calendar.HOUR, 6);
//    		calendar.set
//    		calendar.add(Calendar.MONTH, 2);//月份+2
//    		calendar.add(Calendar.HOUR, -1);//小時-1
//    		Date tdt=calendar.getTime();//取得加減過後的Date
    		
			
			
//			boolean chkEquals = timeMachine.chekDateEquals(date, start);
//			System.out.println(chkEquals);
			
//			 System.out.println(date.after(start)); 
//			boolean isTime = timeMachine.isInDate(date, "08:00:00", "10:00:00");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
    }
}