package cn.codehero.spring.web.spring;


public class SpringManager implements ISpring{
	
	@Override
	public String get(){
		System.out.println("-----------I am springManager----");
		
		return "I am getMethod  从ac2上下文中拿Bean";
	}
	

}
