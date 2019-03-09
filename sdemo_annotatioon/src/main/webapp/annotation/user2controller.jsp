<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="../js/jquery-2.1.4.js"> </script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
  <h3>目录</h3>
  <h4>1.springmvc注解优化</h4>
  	显示调用了哪个方法：${result }
  
  <form action = "/annotation/user2/addUser"  method="post"> 
  		<input type="submit" value="post请求用于实验addUser">
  </form>
</body>
</html>