<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <script type="text/javascript" src="/js/jquery-2.1.4.js"> </script> -->
<script type="text/javascript" src="/java_springmvc/js/jquery-1.11.3.min.js"> </script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(document).ready(function(){
		$("#add").click(function(){
			var userName = $("#userName").attr("value");
			var age = $("#age").attr("value");
			
			var user = {userName:userName,age:age};
			
			$.ajax({
					url:"/user/data3/addUser",
					type:"post",
					data:user,
					success:function(data){
						alert("userName--->"+data.userName+"age----->"+data.age);
					}
			})
		});
	});
	
</script>

</head>
<body>
	<h3>json添加用户</h3>
		姓名<input type="text" id="userName" name="userName">
   	             年龄<input type="text" id="age" name="age">
	<input type ="button" id="add" value="添加">

</body>
</html>