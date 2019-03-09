package cn.codehero.spring.web.jdbc;

import javax.annotation.Resource;

import org.apache.commons.dbcp.BasicDataSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JdbcTest {
	@Resource(name="myDataSource")
	private BasicDataSource myDataSource;
	
	@RequestMapping("/jdbc/test")
	public void he(){
	System.out.println("jdbc="+myDataSource);
	System.out.println("user="+myDataSource.getUsername());
	System.out.println("password="+myDataSource.getPassword());
	}
}
