<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>login</title>
<link href="${pageContext.request.contextPath}/./Wopop_files/style_log.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/./Wopop_files/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/./Wopop_files/userpanel.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/./Wopop_files/jquery.ui.all.css">

</head>

<body class="login" mycollectionplug="bind">
<div class="login_m">
<div class="login_logo"></div>
<div class="login_boder">

<div class="login_padding" id="login_model">
<form action="/OnlineShoppingMail/login/log" method="post">
  <h2>邮箱</h2>
  <label>
    <input type="text" name = "useremail"id="useremail" class="txt_input txt_input2" onfocus="if (value ==&#39;Your name&#39;){value =&#39;&#39;}" onblur="if (value ==&#39;&#39;){value=&#39;Your name&#39;}" value="Email">
  </label>
  <h2>密码</h2>
  <label>
    <input type="password" name="psw" id="userpwd" class="txt_input" onfocus="if (value ==&#39;******&#39;){value =&#39;&#39;}" onblur="if (value ==&#39;&#39;){value=&#39;******&#39;}" value="******">
  </label>
  <label>
      
      <input type="submit" class="sub_button" name="login" id="register" value="登录" style="opacity: 0.7;">
      
    </label>

    
</form>

 
  <div class="rem_sub">
  <form action="/OnlineShoppingMail/register/toadd" method="post">
  <label>
      
      <input type="submit" class="sub_button" name="register" id="register" value="注册" style="opacity: 0.7;">
      
    </label>
    </form>
  <div class="rem_sub_l">
  <input type="checkbox" name="checkbox" id="save_me">
   <label for="checkbox">记住密码</label>
    
   </div>
  </div>
</div>

<div class="copyrights">Collect from <a href="${pageContext.request.contextPath}/http://www.cssmoban.com/" >企业网站模板</a></div>

<div id="forget_model" class="login_padding" style="display:none">
<br>

   <h1>忘记密码</h1>
   <br>
   <div class="forget_model_h2">(Please enter your registered email below and the system will automatically reset users’ password and send it to user’s registered email address.)</div>
    <label>
    <input type="text" id="usrmail" class="txt_input txt_input2">
   </label>
 
</div>






<!--login_padding  Sign up end-->
</div><!--login_boder end-->
</div><!--login_m end-->
 <br> <br>


</body></html>