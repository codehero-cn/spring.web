package spring.web.annotation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
/**
 * SpringMVC视频教程_李守宏主讲（25集）
 * 第6课---(6)springMVC注解启用         
 */
@Controller
public class User1Controller {
	
	@RequestMapping(value="/annotation/user1/addUser",method=RequestMethod.POST)
	public ModelAndView addUser(){
		
		String result = "this is addUser ---------";
		return new ModelAndView("annotation/user1controller","result",result);
		
	}
	
	@RequestMapping(value="/annotation/user1/delUser",method=RequestMethod.GET)
	public ModelAndView delUser(){
		
		String result = "this is delUser ---------";
		return new ModelAndView("annotation/user1controller","result",result);		
	}	
	
	
	@RequestMapping(value="/annotation/user1/toUser",method=RequestMethod.GET)
	public ModelAndView toUser(){
		String result = "this is toUser ---------";
		return new ModelAndView("annotation/user1controller","result",result);
	}
	
}

