package cn.codehero.spring.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
/**
 * SpringMVC视频教程_李守宏主讲（25集）
 * 第5课---(5)springMVC静态文件访问       
 */
public class StaticController extends MultiActionController{
	public ModelAndView img(HttpServletRequest request,HttpServletResponse response){
		System.out.println("---test----");
		return new ModelAndView("controller/staticcontroller_staticfile","methed","img");
	
	}
	public ModelAndView jquery(HttpServletRequest request,HttpServletResponse response){
		System.out.println("---jquery----");
		return new ModelAndView("controller/staticcontroller_jquery","methed","jquery");
	}
	
}