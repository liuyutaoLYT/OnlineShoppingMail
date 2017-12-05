<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/OnlineShoppingMail/product/addproductlist" method="post">
                <input type="text" name = "productname"/>
                <input type="text" name = "originalprice"/>
                <input type="text" name = "discountprice"/>
                <input type="file" name="file"/>
                 <input type="submit" value="保存"> 
               </form>

</body>
</html>