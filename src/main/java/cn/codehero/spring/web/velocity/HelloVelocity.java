package cn.codehero.spring.web.velocity;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class HelloVelocity {

 @RequestMapping(value = "/hellovelocity")

 public ModelAndView toPage1() {
	 System.out.println("hello velocity");
  return new ModelAndView("vm/helloworld");

 }

}


