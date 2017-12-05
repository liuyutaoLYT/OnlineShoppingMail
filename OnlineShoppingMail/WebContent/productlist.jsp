<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Amaze UI Admin index Examples</title>
<meta name="description" content="这是一个 index 页面">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin.css">
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
</head>
<body>
<!--[if lte IE 9]><p class="browsehappy">升级你的浏览器吧！ <a href="${pageContext.request.contextPath}/http://se.360.cn/" target="_blank">升级浏览器</a>以获得更好的体验！</p><![endif]-->






</head>

<body>
<header class="am-topbar admin-header">
  <div class="am-topbar-brand"><img src="${pageContext.request.contextPath}/assets/i/logo.png"></div>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">
    <ul class="am-nav am-nav-pills am-topbar-nav admin-header-list">

   <li class="am-dropdown tognzhi" data-am-dropdown>
  <button class="am-btn am-btn-primary am-dropdown-toggle am-btn-xs am-radius am-icon-bell-o" data-am-dropdown-toggle> 消息管理<span class="am-badge am-badge-danger am-round">6</span></button>
  <ul class="am-dropdown-content">
  	
  	
  	
    <li class="am-dropdown-header">所有消息都在这里</li>

    

    <li><a href="${pageContext.request.contextPath}/#">未激活会员 <span class="am-badge am-badge-danger am-round">556</span></a></li>
    <li><a href="${pageContext.request.contextPath}/#">未激活代理 <span class="am-badge am-badge-danger am-round">69</span></a></a></li>
    <li><a href="${pageContext.request.contextPath}/#">未处理汇款</a></li>
    <li><a href="${pageContext.request.contextPath}/#">未发放提现</a></li>
    <li><a href="${pageContext.request.contextPath}/#">未发货订单</a></li>
    <li><a href="${pageContext.request.contextPath}/#">低库存产品</a></li>
    <li><a href="${pageContext.request.contextPath}/#">信息反馈</a></li>
    
    
    
  </ul>
</li>

 <li class="kuanjie">
 	
 	<a href="${pageContext.request.contextPath}/#">会员管理</a>          
 	<a href="${pageContext.request.contextPath}/#">奖金管理</a> 
 	<a href="${pageContext.request.contextPath}/#">订单管理</a>   
 	<a href="${pageContext.request.contextPath}/#">产品管理</a> 
 	<a href="${pageContext.request.contextPath}/#">个人中心</a> 
 	 <a href="${pageContext.request.contextPath}/#">系统设置</a>
 </li>

 <li class="soso">
 	
<p>   
	
	<select data-am-selected="{btnWidth: 70, btnSize: 'sm', btnStyle: 'default'}">
          <option value="b">全部</option>
          <option value="o">产品</option>
          <option value="o">会员</option>
          
        </select>

</p>

<p class="ycfg"><input type="text" class="am-form-field am-input-sm" placeholder="圆角表单域" /></p>
<p><button class="am-btn am-btn-xs am-btn-default am-xiao"><i class="am-icon-search"></i></button></p>
 </li>




      <li class="am-hide-sm-only" style="float: right;"><a href="${pageContext.request.contextPath}/javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>

<div class="am-cf admin-main"> 

<div class="nav-navicon admin-main admin-sidebar">
    
    
    <div class="sideMenu am-icon-dashboard" style="color:#aeb2b7; margin: 10px 0 0 0;"> 欢迎系统管理员：清风抚雪</div>
    <div class="sideMenu">
      <h3 class="am-icon-flag"><em></em> <a href="${pageContext.request.contextPath}/#">商品管理</a></h3>
      <h3 class="am-icon-cart-plus"><em></em> <a href="${pageContext.request.contextPath}/#"> 订单管理</a></h3>
      <h3 class="am-icon-users"><em></em> <a href="${pageContext.request.contextPath}/#">会员管理</a></h3>
      <h3 class="am-icon-volume-up"><em></em> <a href="${pageContext.request.contextPath}/#">信息通知</a></h3>
    </div>
    <!-- sideMenu End --> 
    
    <script type="text/javascript">
			jQuery(".sideMenu").slide({
				titCell:"h3", //鼠标触发对象
				targetCell:"ul", //与titCell一一对应，第n个titCell控制第n个targetCell的显示隐藏
				effect:"slideDown", //targetCell下拉效果
				delayTime:300 , //效果时间
				triggerTime:150, //鼠标延迟触发时间（默认150）
				defaultPlay:true,//默认是否执行效果（默认true）
				returnDefault:true //鼠标从.sideMen移走后返回默认状态（默认false）
				});
		</script> 

    
    
    
    
    
    
    
</div>

<div class=" admin-content">
	
		<div class="daohang">
			<ul>
				
				
			</ul>

       

	
</div>
	
	


<div class="admin-biaogelist">
	
    <div class="listbiaoti am-cf">
      <ul class="am-icon-flag on"> 栏目名称</ul>
      
      <dl class="am-icon-home" style="float: right;"> 当前位置： 首页 > <a href="${pageContext.request.contextPath}/#">商品列表</a></dl>
      
      <dl>
        <button type="button" class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus"> 添加产品</button>
      </dl>
      
      
    </div>
	
	<div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
  <ul>
    <li>
      <div class="am-btn-group am-btn-group-xs">
        
      </div>
    </li>
    <li>
      <div class="am-btn-group am-btn-group-xs">
      
      </div>
    </li>
    <li style="margin-right: 0;">
    </li>
       <li style="margin-left: -4px;">
    </li>
    
        <li style="margin-left: -10px;">
      <div class="am-btn-group am-btn-group-xs">
      </div>
    </li>
    <li><input type="text" class="am-form-field am-input-sm am-input-xm" placeholder="关键词搜索" /></li>
    <li><button type="button" class="am-btn am-radius am-btn-xs am-btn-success" style="margin-top: -1px;">搜索</button></li>
  </ul>
</div>


    <form class="am-form am-g">
          <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped">
            <thead>
              <tr class="am-success">
                <th class="table-id">ID</th>
                <th width="163px class="table-id" ">名称</th>
                <th class="table-title">原价</th>
                <th class="table-type">折扣价</th>
                <th width="163px" class="table-set">操作</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach items = "${page.list }" var = "p">
              <tr>
                <td>${p.productid  }</td>
                <td>${p.productname }</td>
                <td>${p.originalprice }</td>
                <td>${p.discountprice }</td>
                <td><div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                      <button class="am-btn am-btn-default am-btn-xs am-text-secondary am-round"><span class="am-icon-pencil-square-o"></span></button>
                      <button class="am-btn am-btn-default am-btn-xs am-text-warning  am-round"><span class="am-icon-copy"></span></button>
                      <button class="am-btn am-btn-default am-btn-xs am-text-danger am-round"><span class="am-icon-trash-o"></span></button>
                    </div>
                  </div></td>
                  </tr>
              </c:forEach>
            </tbody>
          </table>
          
                 <div class="am-btn-group am-btn-group-xs">
              <button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 新增</button>
              <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 保存</button>
              <button type="button" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> 全部删除</button>
            </div>
          
          <ul class="am-pagination am-fr">
                <tr><td colspan="4">共有${page.totalCount }条数据，一共${page.totalPageNum }页
				<a href="/OnlineShoppingMail/product/toshowproduct?pageNum=1">首页</a>
				<a href="/OnlineShoppingMail/product/toshowproduct?pageNum=${page.prePageNum }">上一页</a>
				<a href="/OnlineShoppingMail/product/toshowproduct?pageNum=${page.nextPageNum }">下一页</a>
				<a href="/OnlineShoppingMail/product/toshowproduct?pageNum=${page.totalPageNum }">末页</a>
			</td></tr>
              </ul>
          
          
          
      
          <hr />
        </form>
 
 
 
 
 



</div>

</div>




</div>

<!--[if lt IE 9]>
<script src="${pageContext.request.contextPath}/http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/polyfill/rem.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/polyfill/respond.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/amazeui.legacy.js"></script>
<![endif]--> 

<!--[if (gte IE 9)|!(IE)]><!--> 
<script src="${pageContext.request.contextPath}/assets/js/amazeui.min.js"></script>
<!--<![endif]-->



</body>
</html>