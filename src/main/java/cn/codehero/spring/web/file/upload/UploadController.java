package cn.codehero.spring.web.file.upload;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import cn.codehero.spring.web.entity.User;
/**
 * SpringMVC视频教程_李守宏主讲（25集）
 * 第11课---(11)springMVC上传文件        
 */
@Controller
@RequestMapping("/file")
public class UploadController {
	
	@RequestMapping("/upload")
	public String upload(@RequestParam("file") CommonsMultipartFile file,
			HttpServletRequest request) throws IOException {
		
		System.out.println("fileName---->" + file.getOriginalFilename());

		if (!file.isEmpty()) {

			FileOutputStream os;
			try {
				os = new FileOutputStream("D:/" + new Date().getTime()
						+ file.getOriginalFilename());
				InputStream in = file.getInputStream();
				int b = 0;
				while ((b = in.read()) != -1) {
					os.write(b);
				}
				os.flush();
				os.close();
				in.close();

			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "file/upload/UploadController_success";
	}

	@RequestMapping("/toupload")
	public String toUpload() {
		String result = "this is toUser";

		return "file/upload/UploadController_upload";
	}

}
