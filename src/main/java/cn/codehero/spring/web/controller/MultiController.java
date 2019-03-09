package cn.codehero.spring.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

/**
 * SpringMVC视频教程_李守宏主讲（25集）
 * 第4课---(4)springMVC一个controller写多个方法.part1 
 */
public class MultiController extends MultiActionController {
	public ModelAndView add(HttpServletRequest request,
			HttpServletResponse response) {
		System.out.println("---add----");
		return new ModelAndView("controller/multicontroller", "method", "add");
	}

	public ModelAndView updata(HttpServletRequest request,
			HttpServletResponse response) {
		System.out.println("---updata----");
		return new ModelAndView("controller/multicontroller", "method", "updata");
	}

}