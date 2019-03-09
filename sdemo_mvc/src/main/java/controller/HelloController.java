package spring.web.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

/**
 * helloworldr最简单的控制器
 * SpringMVC视频教程_李守宏主讲（25集）
 * 第2课---(2)springMVC-helloworld实例  
 * 第3课---(3)springMVC修改配置文件路径和给界面传递数据  
 * 
 */
public  class HelloController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("---test---test");
		
		String hello="eleven hello";
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("map1","提高班4");
		map.put("map2","提高班5");
		map.put("map3","提高班6");
		
		
		
		return new ModelAndView("controller/hellocontroller","map",map);
		
	}

	
}
