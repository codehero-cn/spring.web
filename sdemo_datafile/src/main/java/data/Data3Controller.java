package spring.web.data;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.web.entity.User;

/**
 * SpringMVC视频教程_李守宏主讲（25集）
 * 第10课---(10)springMVC获取controller中的json数据 
 */
@Controller
@RequestMapping("/user/data3")
public class Data3Controller {
	// TODO 传递数据没成功  
	/*@RequestMapping("/addUser")
	public String addUser(UserDAO user,HttpServletRequest request){
		request.setAttribute("userName", user.getUserName());
		request.setAttribute("age", user.getAge());
				
		return "/userManager3";
	}*/
	@RequestMapping("/addUserJson")
	public String addUserJson(User user,HttpServletRequest request,HttpServletResponse response){
		//{"username":"userName","age","age"}拼接
		String result = "{\"userName\":\" "+ user.getUserName() + "\",\"age\":\" "+ user.getAge() + "\"}";
		
/*		PrintWriter out = null;
		response.setC*/
				
		return "data/Data3Controller_userManager";
	}
	
	
	@RequestMapping("/delUser")
	public String delUser(){
		
		String result = "this is delUser";
		
		return  "";	
	}	
	
	
	@RequestMapping("/toUser")
	public String toUser(){
		String result = "this is toUser";
		
		return "data/Data3Controller_addUser_json";
	}
	
}

