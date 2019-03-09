package cn.codehero.spring.web.data;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.codehero.spring.web.entity.User;

/**
 * SpringMVC视频教程_李守宏主讲（25集）
 * 第9课---(9)springMVC和json结合传递数据         
 */
@Controller
@RequestMapping("/user/data2")
public class Data2Controller {
	
	@RequestMapping("/addUser")
	public String addUser(User user,HttpServletRequest request){
		request.setAttribute("userName", user.getUserName());
		request.setAttribute("age", user.getAge());
				
		return "data/Data2Controller_userManager";
	}
	
	@RequestMapping("/delUser")
	public String delUser(){
		
		String result = "this is delUser";
		
		return  "/";	
	}	
	
	
	@RequestMapping("/toUser")
	public String toUser(){
		String result = "this is toUser";
		
		return "data/Data2Controller_addUser";
	}
	
}

