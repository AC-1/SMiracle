package com.miracle.common;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.UUID;

import org.springframework.stereotype.Component;

@Component
public class TimeMachine
{
	private GregorianCalendar time = null;
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
//	  String dateString = sdf.format(date);
//	  System.out.println(dateString);
	  return parseDate;
  }
  
  
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
}
