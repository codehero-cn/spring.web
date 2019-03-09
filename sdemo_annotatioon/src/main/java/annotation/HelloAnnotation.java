package spring.web.annotation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HelloAnnotation {
	@RequestMapping("/annotation/hello")
		public String home() {
		return "annotation/helloannotation";
	}

}
