<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jQuery Contact Form Plugin: FFForm</title>
<link href="${pageContext.request.contextPath}/css/demo.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/js/jquery-1.10.2.min.js" type="text/javascript"></script>
<!--Framework-->
<script src="${pageContext.request.contextPath}/js/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery-ui.js" type="text/javascript"></script>
<!--End Framework-->
<script src="${pageContext.request.contextPath}/js/jquery.ffform.js" type="text/javascript"></script>
<script type="text/javascript">  
	function send() {  
		$.post("/OnlineShoppingMail/register/checkemail",{email:$("#email").val()},function(result){
			
		    if(result == "true"){
		    	
		    	
		    	document.getElementById("ajax").innerHTML = "用户名已被注册";
		    	document.getElementById("ajax").style.color="Red";
		    }if(result == "false"){
		    	document.getElementById("ajax").innerHTML = "用户名可以使用";
		    	document.getElementById("ajax").style.color="green";
		    }if(result =="1"){
		    	document.getElementById("ajax").innerHTML = "邮箱格式错误";
		    	document.getElementById("ajax").style.color="Red";
		    }
		    
		  });
		}
	function check() {  
		$.post("/OnlineShoppingMail/register/checkpsw",{psw:$("#psw").val(),psw1:$("#psw1").val()},function(result){
			
		    if(result == "true"){
		    	
		    	
		    	document.getElementById("qqq").innerHTML = "两次输入密码不同";
		    }
		  });
		}
</script>

<span style="white-space:pre">      </span><pre name="code" class="java"><!-- Jackson Json处理工具包 -->  
<dependency>  
    <groupId></groupId>  
    <artifactId></artifactId>  
    <jackson.version></jackson.version>  
</dependency></pre><br>  
<br>  
<pre></pre>  
<p></p>  
<pre></pre>  
<pre></pre> 
</head>
<body>

	<section id="getintouch" class="flipInX animated">
		<div class="container" style="border-bottom: 0;">
			<h1>
				<span>注册</span>
			</h1>
		</div>
		<div class="container">
			<form class="contact" action="/OnlineShoppingMail/register/add" enctype="multipart/form-data"
				method="post">
				<div class="row clearfix">
					<div class="lbl">
						<label for="name"> 用户名</label>
					</div>
					<div class="ctrl">
						<input type="text" id="name" name="userName" data-required="true"
							data-validation="text" data-msg="Invalid Name"
							placeholder="Ex: John Donga">
					</div>
				</div>
				<div class="row clearfix">
					<div class="lbl">
						<label for="email"> 邮箱</label>
					</div>
					<div class="ctrl">
						<input type="text" id="email" name="email" data-required="true"
							data-validation="email" data-msg="Invalid E-Mail"
							placeholder="Ex: youremail@domain.com" onblur="send()"><span id="ajax"></span>
					</div>
				</div>
				<div class="row clearfix">
					<div class="lbl">
						<label for="email"> 密码</label>
					</div>
					<div class="ctrl">
						<input type="password" id="psw" name="psw"
							data-required="true" data-validation="custom"
							data-msg="Invalid Phone #" placeholder="EX:******"
							>
					</div>
				</div>
				<div class="row clearfix">
					<div class="lbl">
						<label for="subject"> 确认密码</label>
					</div>
					<div class="ctrl">
						<input type="password" name="psw1" id="psw1"
							placeholder="EX:******" onblur = "check()"><br/><span id="qqq"></span><br/>
						<label>头 像</label><br/>
						<input type="file" name="file"/><br/>
					</div>
				</div>
				
				<div class="span10 offset2" style="border-bottom: 0;">
					<input type="submit" name="submit" id="submit" class="submit"
						value="提交">
				</div>
		</div>
		<div class="row  clearfix" style="border-bottom: 0;"> </div>
		</form>

		<div id="validation"></div>
		</div>
	</section>
</body>
</html>