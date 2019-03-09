package spring.web.data;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * SpringMVC视频教程_李守宏主讲（25集）
 * 第8课---(8)springMVC参数传递         
 */
@Controller
@RequestMapping("/user/data1")
public class Data1Controller {
	
	@RequestMapping("/addUser")
	public String addUser(String userName,String age,HttpServletRequest request){
		request.setAttribute("userName", userName);
		request.setAttribute("age", age);
				
		return "data/Data1Controller_userManager";
	}
	
		
	@RequestMapping("/delUser")
	public String delUser(){
		
		String result = "this is delUser ";
		
		return  "/";	
	}	
	
	
	@RequestMapping("/toUser")
	public String toUser(){
		String result = "this is toUser ";
		
		return "data/Data1Controller_addUser";
	}
	
}

