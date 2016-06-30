package com.miracle.common;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Random;
import java.util.UUID;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Component;

@Component
public class TimeMachine
{
	private GregorianCalendar time = null;
	private static final Log log = LogFactory.getLog(TimeMachine.class);
    static SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
	public TimeMachine()
	{
		time = new GregorianCalendar();
	}
	/**
	 * @param args
	 */
	public static void main(String[] args)
	{
		// TODO Auto-generated method stub
		TimeMachine tm  = new TimeMachine();
//		for(int i=0;i<10;i++){
//			System.out.println(tm.getNowTime());
//		}
        System.out.println(String.format("%1$,03d", 13));
	}

	public String getNowTime()
	{
		String year;
		String month;
		String date;
		String hour;
		String minute;
		String second;
		String NowDatetime = "";
		String minisecond;
		year = String.valueOf(time.get(time.YEAR)).substring(2, 4);
		month = String.valueOf(time.get(time.MONTH) + 1);
		date = String.valueOf(time.get(time.DATE));
		hour = String.valueOf(time.get(time.HOUR_OF_DAY));
		minute = String.valueOf(time.get(time.MINUTE));
		second = String.valueOf(time.get(time.SECOND));
        minisecond =  String.valueOf(time.get(time.MILLISECOND));
        
//        System.currentTimeMillis();
		if (month.length() <= 1)
		{
			month = "0" + month;
		}
		if (date.length() <= 1)
		{
			date = "0" + date;
		}
		if (hour.length() <= 1)
		{
			hour = "0" + hour;
		}
		if (minute.length() <= 1)
		{
			minute = "0" + minute;
		}
		if (second.length() <= 1)
		{
			second = "0" + second;
		}
		NowDatetime = year + month + date + hour + minute + second + minisecond;
		
		return NowDatetime;
	}
	public String getNowTimewithSymbol()
	{
		String year;
		String month;
		String date;
		String hour;
		String minute;
		String second;
		String NowDatetime = "";
		
		year = String.valueOf(time.get(time.YEAR));
		month = String.valueOf(time.get(time.MONTH) + 1);
		date = String.valueOf(time.get(time.DATE));
		hour = String.valueOf(time.get(time.HOUR_OF_DAY));
		minute = String.valueOf(time.get(time.MINUTE));
		second = String.valueOf(time.get(time.SECOND));

		if (month.length() <= 1)
		{
			month = "0" + month;
		}
		if (date.length() <= 1)
		{
			date = "0" + date;
		}
		if (hour.length() <= 1)
		{
			hour = "0" + hour;
		}
		if (minute.length() <= 1)
		{
			minute = "0" + minute;
		}
		if (second.length() <= 1)
		{
			second = "0" + second;
		}
		NowDatetime = year +"/"+ month +"/"+ date +" "+ hour +":"+ minute +":"+ second;
		return NowDatetime;
	}
	public String getTodayDate()
	{
		String year;
		String month;
		String date;
		//String hour;
		//String minute;
		//String second;
		String NowDatetime = "";

		year = String.valueOf(time.get(time.YEAR));
		month = String.valueOf(time.get(time.MONTH) + 1);
		date = String.valueOf(time.get(time.DATE));
		if (month.length() <= 1)
		{
			month = "0" + month;
		}
		if (date.length() <= 1)
		{
			date = "0" + date;
		}
		
		NowDatetime = year + month + date;
		return NowDatetime;
	}
	public String getTodayYear()
	{
		String year;
		year = String.valueOf(time.get(time.YEAR));
		return year;
	}
	public String getTodayMonth()
	{
		String month;
		month = String.valueOf(time.get(time.MONTH) + 1);
		if (month.length() <= 1)
		{
			month = "0" + month;
		}
		return month;
	}
	public String getTodayDay()
	{
		String day;
		day = String.valueOf(time.get(time.DATE));
		if (day.length() <= 1)
		{
			day = "0" + day;
		}
		return day;
	}
	
	//?��?序�??�function
  public String serial(String name,int num){

	  return name = name +"_"+getNowTime() + String.format("%1$,02d", num);
	  
  }
  
  
//產生序號的function
  public String serialName(String name,int num){

	  return name = name + getNowTime() + String.format("%1$,02d", num);
	  
  }
  
  //產生序號的function
  public String serialZero(int num){

	  return getNowTime() + String.format("%1$,02d", num);
	  
  }
  
  //產生序號的function
  public String serialTwo(int num){

	  return (System.currentTimeMillis() + (int)(Math.random() * (9999 - 1000) + 1000)) + String.format("%1$,02d", num);
  }
  
	//產生random
  public String random(String name){
	  
	  return name +"_"+getNowTime() + String.format("%1$,03d", new Random().nextInt(999));	
  }
	
	//產生week
  public String week(String name){
	  
		String second1 = String.valueOf(time.get(time.WEEK_OF_MONTH)-1);
		System.out.println("second1:"+second1);
	  
	  return name +"_"+getNowTime() + String.format("%1$,03d", new Random().nextInt(999));	
  }
  
	//產生time
  public int time1(){

	  int houra=time.get(time.HOUR_OF_DAY)*60;
	  int minutea=time.get(time.MINUTE);
	  int hourminSum = houra + minutea;
	  
	  return hourminSum;	
  }
  
  /** 
   * 获取日期年份 
   * @param date 
   * @return 
   * @throws ParseException 
   */  
  public int getYear(String date) throws ParseException{  
      Calendar calendar = Calendar.getInstance();  
      calendar.setTime(dateFormat.parse(date));  
      return calendar.get(Calendar.YEAR);  
  }  
    
  /** 
   * 获取日期月份 
   * @param date 
   * @return 
   * @throws ParseException 
   */  
  public int getMonth(String date) throws ParseException{  
      Calendar calendar = Calendar.getInstance();  
      calendar.setTime(dateFormat.parse(date));  
      return (calendar.get(Calendar.MONTH) + 1);  
  }  
    
  /** 
   * 获取日期号 
   * @param date 
   * @return 
   * @throws ParseException 
   */  
  public int getDay(String date) throws ParseException{  
      Calendar calendar = Calendar.getInstance();  
      calendar.setTime(dateFormat.parse(date));  
      return calendar.get(Calendar.DAY_OF_MONTH);  
  }  
  /** 
   * 获取月份起始日期 
   * @param date 
   * @return 
   * @throws ParseException 
   */  
  public String getMinMonthDate(String date) throws ParseException{  
      Calendar calendar = Calendar.getInstance();  
      calendar.setTime(dateFormat.parse(date));  
      calendar.set(Calendar.DAY_OF_MONTH, calendar.getActualMinimum(Calendar.DAY_OF_MONTH));  
      return dateFormat.format(calendar.getTime());  
  }  
  
  /** 
   * 获取月份最后日期 
   * @param date 
   * @return 
   * @throws ParseException 
   */  
  public String getMaxMonthDate(Date date) throws ParseException{  
      Calendar calendar = Calendar.getInstance();  
      calendar.setTime(date); 
      calendar.set(Calendar.DAY_OF_MONTH, calendar.getActualMaximum(Calendar.DAY_OF_MONTH));  
      return dateFormat.format(calendar.getTime());  
  }  
  
  
  /**
	 * 日期是否介於等於起訖日之間
	 * @param date 判斷日
	 * @param start 起始日
	 * @param end 迄日
	 * @return
	 */
	public boolean isDateBetween (Date date, Date start, Date end){
		return date.compareTo(start) >= 0 && date.compareTo(end) <= 0;
	}
	
	/**
	 * 日期比對 date1 是否大於 date2
	 * @param date1
	 * @param date2
	 * @return
	 */
	public boolean chekDate(Date date1, Date date2){
		return date1.compareTo(date2) >  0 ;
	}
	
	/**
	 * 日期比對 date1 是否小於等於 date2
	 * @param date1
	 * @param date2
	 * @return
	 */
	public boolean chekLtEqDate(Date date1, Date date2){
		return date1.compareTo(date2) <=  0 ;
	}
	
	
	/**
	 * 日期比對 date1 是否等於 date2
	 * @param date1
	 * @param date2
	 * @return
	 */
	public boolean chekDateEquals(Date date1, Date date2){
		return date1.compareTo(date2) ==  0 ;
	}
	
	
	/**
	 * 日期時間加上2小時
	 * @param date1
	 * @return
	 */
	public Date addTwoHour(Date date1){
		//DB更新時間加上2小時
		Calendar Cal= Calendar.getInstance();  
		Cal.setTime(date1);  
		Cal.add(java.util.Calendar.HOUR_OF_DAY,2);  
		Date twoHourDate = Cal.getTime();
		return twoHourDate;
	}
	
	
	public String newRandomUUID() {
	      String uuidRaw = UUID.randomUUID().toString();
	      return uuidRaw.replaceAll("-", "");
	  }
		
	  
   public String todayFormat(){
	  String pattern = "yyyy-MM-dd HH:mm:ss";
	  //目前時間
	  Date date = new Date();
	  //設定日期格式
	  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	  //進行轉換
	  String parseDate = new SimpleDateFormat(pattern).format(date);
//		  String dateString = sdf.format(date);
//		  System.out.println(dateString);
	  return parseDate;
   }
	
   public String getNowHourTime()
	{
		String hour;
		String minute;
		String NowDatetime = "";
		
		hour = String.valueOf(time.get(time.HOUR_OF_DAY));
		minute = String.valueOf(time.get(time.MINUTE));

		if (hour.length() <= 1)
		{
			hour = "0" + hour;
		}
		if (minute.length() <= 1)
		{
			minute = "0" + minute;
		}
		NowDatetime = hour +":"+ minute ;
		return NowDatetime;
	}

  //今日日期轉換
  public String todayFormatYMD(){
	  String pattern = "yyyy-MM-dd";
	  //目前時間
	  Date date = new Date();
	  //設定日期格式
	  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	  //進行轉換
	  String parseDate = new SimpleDateFormat(pattern).format(date);
//		  String dateString = sdf.format(date);
//		  System.out.println(dateString);
	  return parseDate;
   }
  
  
  //日期轉換
  public String dateFormatYMD(Date date){
	  String pattern = "yyyy-MM-dd";
	  //目前時間
	  //設定日期格式
	  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	  //進行轉換
	  String parseDate = new SimpleDateFormat(pattern).format(date);
//		  String dateString = sdf.format(date);
//		  System.out.println(dateString);
	  return parseDate;
   }
  
  
   //日期轉換
   public String dateFormat(Date date){
	  //設定日期格式
	  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	  //進行轉換
	  String parseDate = sdf.format(date);
//		  System.out.println(dateString);
	  return parseDate;
   }
  
    /**
	 * 更改日期裡面的 時 分 秒
	 * @param date 須更改的日期
	 * @param hour 更改的小時24小時制
	 * @param minute 更改的分
	 * @param second 更改的秒
	 */
	public Date changeTime(Date date, int hour, int minute, int second){
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.set(Calendar.HOUR_OF_DAY, hour); //24小時制
//		c.set(Calendar.AM_PM, Calendar.PM);       //將hour改成下午六點 
//		c.set(Calendar.HOUR, 6);
		calendar.set(Calendar.MINUTE, minute); 
		calendar.set(Calendar.SECOND, second);
		calendar.set(Calendar.MILLISECOND, 00);
		Date getDate = calendar.getTime();
		return getDate;
	}
}
