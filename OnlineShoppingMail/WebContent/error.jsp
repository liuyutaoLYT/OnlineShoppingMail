<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head> 
<title>出错啦~~~</title> 
<link href="css/login1.css" mce_href="css/login1.css" rel="stylesheet" type="text/css" /> 
<script language="javascript" type="text/javascript"> 
var i = 3; 
var intervalid; 
intervalid = setInterval("fun()", 1000); 
function fun() { 
if (i == 0) { 
window.location.href = "../login.jsp"; 
clearInterval(intervalid); 
} 
document.getElementById("mes").innerHTML = i; 
i--; 
} 
</script> 
</head> 
<body> 
<div id="errorfrm"> 
<h3>邮箱或密码错误~</h3> 
<div id="error"> 
<img src="images/error.gif" mce_src="images/error.gif" alt="" />  
<p>将在 <span id="mes">3</span> 秒钟后返回登录页面！</p> 
</div> 

</div> 
</body> 
</html>