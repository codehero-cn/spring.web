package spring.web.annotation;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * SpringMVC视频教程_李守宏主讲（25集）
 * 第7课---(7)springMVC注解优化          
 * 增加了根目录   一次用的参数去掉  ，要用再拿出来   用string传递   用request.setAttribute传递参数
 */
@Controller
@RequestMapping("/annotation/user2")
public class User2Controller {
	
	@RequestMapping("/addUser")
	public String addUser(HttpServletRequest request){
		
		String result = "this is addUser ---------优化版";
		request.setAttribute("result", result);
		return "annotation/user2controller";
	}
	
	@RequestMapping("/delUser")
	public String delUser(HttpServletRequest request){
		
		String result = "this is delUser ---------优化版";
		request.setAttribute("result", result);
		return  "annotation/user2controller";	
	}	
	
	
	@RequestMapping("/toUser")
	public String toUser(HttpServletRequest request){
		String result = "this is toUser ---------优化版";
		request.setAttribute("result", result);
		return "annotation/user2controller";
	}
	
}

