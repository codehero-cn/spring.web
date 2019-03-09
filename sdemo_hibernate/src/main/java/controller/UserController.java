package spring.web.hibernate.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.web.entity.User;
import spring.web.hibernate.service.IUserManager;

@Controller
@RequestMapping("/hibernate")
public class UserController {
	
	@Resource(name="userManager")
	private IUserManager userManager;
	
	@RequestMapping("toAddUser")
	public String toAddUser(){
		return "/hibernate/addUser";
	}
	
	@RequestMapping("addUser")
	public String addUser(User user){
		//userManager.addUser(user);
		
		return "/hibernate/success";
	}
	
}
