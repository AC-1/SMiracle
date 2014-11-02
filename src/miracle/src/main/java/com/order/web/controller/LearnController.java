package com.order.web.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.HttpSessionRequiredException;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.github.miemiedev.mybatis.paginator.domain.Order;
import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.order.mode.Car;
import com.order.mode.vo.CarVO;
import com.order.service.CarService;
import com.order.util.JSONUtils;
import com.order.util.SysParameterUtil;
import com.order.util.Tools;



@Controller
@RequestMapping("/learn")
public class LearnController extends BaseController  {
	
	@Autowired
	private CarService carService;
	
	@Autowired
	private Tools tls;
	
	@Autowired
	private SysParameterUtil sysutil;
	
//	@Autowired
//	private Language lng;
	
	@Autowired
	private MessageSource lng;
	
	@Autowired
	private JSONUtils jsonTool;
	
//	private static SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
//	private static final int IntHours = 1;


	@RequestMapping(value = "/holy/index", method = RequestMethod.GET)
	public String findCar(@ModelAttribute Car car, Model model, HttpSession session) throws HttpSessionRequiredException{
		
		
		return "learn/home";
	}
	
	
	//查詢資料
	@RequestMapping(value = "/holy/queryData", method = RequestMethod.GET)
	public String queryData(@ModelAttribute Car car, Model model,@RequestParam Integer pageNumber,
			HttpSession session) throws HttpSessionRequiredException{
//====================分頁用法加此 pageBounds ==========Begin==========		
		int page = pageNumber; //目前的页号
		int pageSize = 3; //每页数据条数
		String sortString = "name.asc";//如果你想排序的话逗号分隔可以排序多列
//		new PageBounds();//默认构造函数不提供分页，返回ArrayList
//		new PageBounds(int limit);//取TOPN操作，返回ArrayList
//		new PageBounds(Order... order);//只排序不分页，返回ArrayList
//		 
//		new PageBounds(int page, int limit);//默认分页，返回PageList
//		new PageBounds(int page, int limit, Order... order);//分页加排序，返回PageList
//		new PageBounds(int page, int limit, List<Order> orders, boolean containsTotalCount);//使用containsTotalCount来决定查不查询totalCount，即返回ArrayList还是PageList
		PageBounds pageBounds = new PageBounds(page, pageSize, Order.formString(sortString), true);
		
		//查詢所有車輛
		List<Car> carList = new ArrayList<Car>();
		carList = carService.queryCarAll(pageBounds);
		//获得结果集条总数
		PageList<Car> pageList = (PageList<Car>)carList;
		int pageTotal = pageList.getPaginator().getTotalPages();//總共頁數
//		System.out.println("totalCount1: " + pageList.getPaginator().getTotalCount());//總數EX:13
//		System.out.println("totalCount2: " + pageList.getPaginator().getLimit());//每页数据条数EX:5
//		System.out.println("totalCount3: " + pageList.getPaginator().getPage());//當前頁數是那一頁EX:2
//		System.out.println("totalCount4: " + pageList.getPaginator().getTotalPages());//總共頁數EX:3
//		System.out.println("totalCount5: " + pageList.getPaginator().getPrePage());//前一頁是那一頁EX:1
//		System.out.println("totalCount6: " + pageList.getPaginator().getNextPage());//下一頁是那一頁EX:3
//		System.out.println("totalCount7: " + pageList.getPaginator().getStartRow());//現在開始起數是第幾個EX:6
//		System.out.println("totalCount8: " + pageList.getPaginator().getOffset());//之前最後尾數是第幾個EX:5
//		System.out.println("totalCount9: " + pageList.getPaginator().getEndRow());//第一頁到這頁共有幾個總數EX:10
		System.out.println("查詢所有車輛========================================");
		for(Car car1 :carList){
			log.info("car id :"+car1.getId()+"  car name:"+car1.getName());
		}
		model.addAttribute("carList",carList);
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("pageTotal", pageTotal);
//====================分頁用法加此 pageBounds ==========End==========	
		
		//以車子主檔Car Mondel去查詢車輛
		car.setId(1);
		car.setName("Bizane");
		car = carService.queryByCarMode(car);
		System.out.println("以車子主檔Car Mondel去查詢車輛=================================");
		log.info("car id :"+car.getId()+"  car name:"+car.getName());
		model.addAttribute("carMode",car);
		
		//以ID查詢車輛
		car = carService.queryCarById("1");
		System.out.println("以ID查詢車輛=====================================");
		log.info("car id :"+car.getId()+"  car name:"+car.getName());
		model.addAttribute(car);
		
		//以ID和NAME查詢車輛
		car = carService.queryByIdName("1", "Bizane");
		System.out.println("以ID和NAME查詢車輛=================================");
		log.info("car id :"+car.getId()+"  car name:"+car.getName());
		model.addAttribute("carIdName",car);
		
		
		//以車子Car VO去查詢車輛
		CarVO carVO = new CarVO();
		carVO.setId(1);
		carVO.setName("Bizane");
		CarVO carVO2 = carService.queryByCarVO(carVO);
		System.out.println("以車子Car VO去查詢車輛=================================");
		log.info("car id :"+car.getId()+"  car name:"+car.getName());
		model.addAttribute("carVO",carVO2);
		
		return "learn/query";
	}
	
	//新增資料頁面
	@RequestMapping(value = "/holy/addCar", method = RequestMethod.GET)
	public String addCar(Model model) throws HttpSessionRequiredException{
		
		
		return "learn/addCar";
	}
	
	
	//新增資料
	@RequestMapping(value = "/holy/createCar", method = RequestMethod.POST)
	public String createCar(@ModelAttribute Car car, Model model, @RequestParam int id, @RequestParam String name, Locale locale) throws Exception{
		
		boolean isCorrect = false;
		
		CarVO carVO = new CarVO();
		carVO.setId(id);
		carVO.setName(name);
		
		// 新增車輛，以ID和Name來新增
		isCorrect = carService.insertCar(id, name);
		//新增車輛，以Car Model來新增
//		isCorrect = carService.insertCarByCar(car);
		//新增車輛，以Car VO來新增
//		isCorrect = carService.insertCarByCarVO(carVO);
		
		if(isCorrect){
			model.addAttribute("msgInsert", lng.getMessage("MSG0002", null, locale));
		}else{
			model.addAttribute("msgInsert", lng.getMessage("MSG0003", null, locale) );
		}
		
		return "learn/home";
	}
	
	
	//修改資料頁面
	@RequestMapping(value = "/holy/update", method = RequestMethod.GET)
	public String update(Model model) throws HttpSessionRequiredException{
//====================分頁用法加此 pageBounds ==========Begin==========			
		int page = 1; //页号
		int pageSize = 7; //每页数据条数
		String sortString = "";//如果你想排序的话逗号分隔可以排序多列
//		new PageBounds();//默认构造函数不提供分页，返回ArrayList
//		new PageBounds(int limit);//取TOPN操作，返回ArrayList
//		new PageBounds(Order... order);//只排序不分页，返回ArrayList
//		 
//		new PageBounds(int page, int limit);//默认分页，返回PageList
//		new PageBounds(int page, int limit, Order... order);//分页加排序，返回PageList
//		new PageBounds(int page, int limit, List<Order> orders, boolean containsTotalCount);//使用containsTotalCount来决定查不查询totalCount，即返回ArrayList还是PageList
		PageBounds pageBounds = new PageBounds(page, pageSize, Order.formString(sortString));
		
		//查詢所有車輛
		List<Car> carList = new ArrayList<Car>();
		carList = carService.queryCarAll(pageBounds);
		
		//获得结果集条总数
		PageList<Car> pageList = (PageList<Car>)carList;
		int pageTotal = pageList.getPaginator().getTotalPages();//總共頁數
//		System.out.println("totalCount1: " + pageList.getPaginator().getTotalCount());//總數EX:13
//		System.out.println("totalCount2: " + pageList.getPaginator().getLimit());//每页数据条数EX:5
//		System.out.println("totalCount3: " + pageList.getPaginator().getPage());//當前頁數是那一頁EX:2
//		System.out.println("totalCount4: " + pageList.getPaginator().getTotalPages());//總共頁數EX:3
//		System.out.println("totalCount5: " + pageList.getPaginator().getPrePage());//前一頁是那一頁EX:1
//		System.out.println("totalCount6: " + pageList.getPaginator().getNextPage());//下一頁是那一頁EX:3
//		System.out.println("totalCount7: " + pageList.getPaginator().getStartRow());//現在開始起數是第幾個EX:6
//		System.out.println("totalCount8: " + pageList.getPaginator().getOffset());//之前最後尾數是第幾個EX:5
//		System.out.println("totalCount9: " + pageList.getPaginator().getEndRow());//第一頁到這頁共有幾個總數EX:10
//====================分頁用法加此 pageBounds ==========End==========			
		
		System.out.println("查詢所有車輛========================================");
		for(Car car1 :carList){
			log.info("car id :"+car1.getId()+"  car name:"+car1.getName());
		}
		model.addAttribute("carList",carList);
		
		return "learn/update";
	}
	
	
	//多筆修改資料
	@RequestMapping(value = "/holy/updateCar", method = RequestMethod.POST)
	public String updateCar(@ModelAttribute CarVO carVO, Model model, @RequestParam int [] ids, @RequestParam String [] names, Locale locale) throws Exception{
		
		boolean isCorrect = false;
		
		CarVO carVO1 = null;
		
		//方式一
		for(int i=0;i<carVO.getIds().size();i++){
			carVO1 = new CarVO();
			carVO1.setId(carVO.getIds().get(i));
			carVO1.setName(carVO.getNames().get(i));
			isCorrect = carService.updateCarByCarVO(carVO1);
		}
		//方式二
//		for(int i=0;i<ids.length;i++){
//			carVO1 = new CarVO();
//			carVO1.setId(ids[i]);
//			carVO1.setName(names[i]);
//			isCorrect = carService.updateCarByCarVO(carVO1);
//		}
		
		if(isCorrect){
			model.addAttribute("msgInsert", lng.getMessage("MSG0004", null, locale));
		}else{
			model.addAttribute("msgInsert", lng.getMessage("MSG0005", null, locale));
		}
		
		return "learn/home";
	}
	
	//單筆資料修改
	@RequestMapping(value = "/holy/updateOneCar", method = RequestMethod.POST)
	public String updateOneCar(Model model, @RequestParam String id, @RequestParam String name, Locale locale) throws Exception{
		
		boolean isCorrect = false;
		
		CarVO carVO = new CarVO();
		carVO.setId(Integer.parseInt(id));
		carVO.setName(name);
		
		//修改車輛，以Car VO來修改
		isCorrect = carService.updateCarByCarVO(carVO);
		
		//修改車輛，以Car ID,Name來修改
		isCorrect = carService.updateCarByIdName(id, name);
		
		if(isCorrect){
			model.addAttribute("msgInsert", lng.getMessage("MSG0004", null, locale));
		}else{
			model.addAttribute("msgInsert", lng.getMessage("MSG0005", null, locale));
		}
		
		return "learn/home";
	}
	
	//刪除頁面
	@RequestMapping(value = "/holy/delete", method = RequestMethod.GET)
	public String delete(Model model) throws HttpSessionRequiredException{
		
		
		return "learn/delete";
	}
	
	
	//刪除資料
	@RequestMapping(value = "/holy/deleteDate", method = RequestMethod.POST)
	public String deleteDate(Model model, @RequestParam String id, Locale locale) throws Exception{
		
		boolean isCorrect = false;
		
		isCorrect = carService.deleteCarById(id);
		
		if(isCorrect){
			model.addAttribute("msgInsert", lng.getMessage("MSG0006", null, locale));
		}else{
			model.addAttribute("msgInsert", lng.getMessage("MSG0007", null, locale));
		}
		
		return "learn/home";
	}
	
	//Transactional 用法 ，如使用@Transactional註解方式注入，則須在Service Method和Dao Class上方或Dao每個用到的Method都加上@Transactional，
	@RequestMapping(value = "/holy/transactionalUse", method = RequestMethod.GET)
	public String transactionalUse(Model model, Locale locale) throws Exception{
		
		boolean isCorrect = false;
		
		// 新增修改車輛
		isCorrect = carService.insertUpdateCar("223", "BMW1","YAHOO1");
		
		if(isCorrect){
			model.addAttribute("msgInsert", lng.getMessage("MSG0008", null, locale));
		}else{
			model.addAttribute("msgInsert", lng.getMessage("MSG0009", null, locale));
		}
		
		return "learn/home";
	}
	
	
	//傳值方式
	@RequestMapping(value = "/holy/passbyvalue/{petId}", method = {RequestMethod.GET, RequestMethod.POST})
	public String passbyvalue(Model model, @PathVariable String petId, @RequestParam String name,
			HttpSession session) throws HttpSessionRequiredException{
		
		model.addAttribute("petId", petId);
		model.addAttribute("name", name);
		
		return "learn/passbyvalue";
	}
	
	
	//新增、修改、查詢、刪除Base用法
	@RequestMapping(value = "/holy/basecar", method = RequestMethod.GET)
	public String baseCar(Model model) throws Exception{
		
		Car car = new Car();
		car.setId(999);
		car.setName("BMW");
		carService.baseCar(car, "BZ");
		
		return "learn/home";
	}
	
	
	
	//進入此Method時SecurityInterceptor.Java會做攔截判斷有沒loginHomeSession session，沒session則導回首頁index/home
	//導內部Method要用redirect:/index/value導頁，用 RedirectAttributes 傳值
	@RequestMapping(value = "/holy/security", method = RequestMethod.GET)
	public String security(@ModelAttribute Car car, Model model, HttpSession session,
			 RedirectAttributes attr) throws HttpSessionRequiredException{
		log.info("security Login");
		
		attr.addFlashAttribute("shopId", "1111");  
        attr.addFlashAttribute("password", "2222");
        
		return "redirect:/learn/holy/securityindex";
		
	}
	
	//接收別的Method傳來的值用@ModelAttribute("value")
	@RequestMapping(value = "/holy/securityindex", method = RequestMethod.GET)
	public String value(@ModelAttribute Car car, Model model, HttpSession session,
			@ModelAttribute("shopId") String shopId , @ModelAttribute("password") String password) throws HttpSessionRequiredException{
		
		log.info(shopId);
		log.info(password);
        System.out.println(shopId);
        System.out.println(password);
        
        return "learn/security";
		
	}
	
	
	//多國語言用法
	@RequestMapping(value = "/holy/language", method = {RequestMethod.GET, RequestMethod.POST})
	public String languageBackEnd(Model model, HttpServletRequest req,  HttpServletResponse res,  HttpSession session 
		   , Locale locale) throws Exception{
		
		model.addAttribute("msg", lng.getMessage("MSG0001", null, locale));
		req.setAttribute("msg1", lng.getMessage("MSG0001", null, locale));
        
		return "learn/languagePage";
	}
	
	//取得系統參數檔用法
	@RequestMapping(value = "/holy/sysParameter", method = {RequestMethod.GET, RequestMethod.POST})
	public String sysParameterGet(Model model, HttpServletRequest req,  HttpServletResponse res,  HttpSession session ) throws Exception{
		 //從DB取系統參數檔
		 String templatePath = sysutil.getSysPrmValue("miracle", "registerMailTemplatePath");//抓取EMail 內容的範本檔
		 
		 //從path.properties取系統參數檔
		 String secrtName = StringUtils.trimToEmpty(sysutil.getCPValue("test").trim());	
		 
		 model.addAttribute("msg", secrtName);
	     req.setAttribute("msg1", secrtName);
	     req.setAttribute("templatePath", templatePath);
        
		return "learn/sysParameter";
	}
	
	
	//回傳Json格式(建議都用此方式就好)
	@ResponseBody
	@RequestMapping(value = "/holy/json", method = RequestMethod.GET ) //,headers="Accept=application/json" or ,headers="Accept=application/xml"
	public Map<String, Object> json(Model model, HttpServletRequest req,  HttpServletResponse res,  HttpSession session ) throws Exception{
				
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		jsonMap.put("pathParameter", "22");
		jsonMap.put("q", "33");
        
		return jsonMap;
	}
	
	//回傳Json格式（用此方式Json在IE底下會變成下載）
	@ResponseBody
	@RequestMapping(value = "/holy/jsontwo", method = RequestMethod.GET ,headers="Accept=application/json") //,headers="Accept=application/json" or ,headers="Accept=application/xml"
	public String jsontwo(Model model, HttpServletRequest req,  HttpServletResponse res,  HttpSession session ) throws Exception{
				
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		jsonMap.put("pathParameter", "22");
		jsonMap.put("q", "33");
		
		ObjectMapper mapper = new ObjectMapper();
		String json1 = mapper.writeValueAsString(jsonMap);
//		String json1 = jsonTool.toJSON(jsonMap);
        
		return json1;
	}
	
	
	//改變頁面傳的Date參數類型
	@InitBinder
	public void initBinder(WebDataBinder binder){
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

	
	
	
}