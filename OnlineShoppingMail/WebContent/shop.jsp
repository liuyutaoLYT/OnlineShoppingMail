<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*" %>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Shop</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
		<!-- favicon
		============================================ -->		
        <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/favicon.ico">
		
		<!-- Bootstrap CSS
		============================================ -->		
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        
        <!-- Nivo slider CSS
		============================================ -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/custom-slider/css/nivo-slider.css" media="screen" />	
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/custom-slider/css/preview.css" media="screen" />
		
		<!-- Fontawsome CSS
		============================================ -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
          
        <!-- material iconic CSS
		============================================ -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/material-design-iconic-font.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/material-design-iconic-font.min.css">
                        
		<!-- owl.carousel CSS
		============================================ -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.css">
        
		<!-- jquery-ui CSS
		============================================ -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery-ui.css">
        
		<!-- meanmenu CSS
		============================================ -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/meanmenu.min.css">
        
		<!-- animate CSS
		============================================ -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">

  
        <!-- Color Switcher CSS
		============================================ -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/color.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/color-switcher.css">
          
        <!-- Animate headline CSS
		============================================ -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate-heading.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
        
		<!-- Video CSS
		============================================ -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.mb.YTPlayer.css">
        
		<!-- style CSS
		============================================ -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
        
		<!-- responsive CSS
		============================================ -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">
        
		<!-- modernizr JS
		============================================ -->		
        <script src="${pageContext.request.contextPath}/js/vendor/modernizr-2.8.3.min.js"></script>
        
        <!-- Color Css Files Start -->
        <link rel="alternate stylesheet" type="text/css" href="${pageContext.request.contextPath}/switcher/color-one.css" title="color-one" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="${pageContext.request.contextPath}/switcher/color-two.css" title="color-two" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="${pageContext.request.contextPath}/switcher/color-three.css" title="color-three" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="${pageContext.request.contextPath}/switcher/color-four.css" title="color-four" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="${pageContext.request.contextPath}/switcher/color-five.css" title="color-five" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="${pageContext.request.contextPath}/switcher/color-six.css" title="color-six" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="${pageContext.request.contextPath}/switcher/color-seven.css" title="color-seven" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="${pageContext.request.contextPath}/switcher/color-eight.css" title="color-eight" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="${pageContext.request.contextPath}/switcher/color-nine.css" title="color-nine" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="${pageContext.request.contextPath}/switcher/color-ten.css" title="color-ten" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="${pageContext.request.contextPath}/switcher/color-ten.css" title="color-ten" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="${pageContext.request.contextPath}/switcher/pattren1.css" title="pattren1" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="${pageContext.request.contextPath}/switcher/pattren2.css" title="pattren2" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="${pageContext.request.contextPath}/switcher/pattren3.css" title="pattren3" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="${pageContext.request.contextPath}/switcher/pattren4.css" title="pattren4" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="${pageContext.request.contextPath}/switcher/pattren5.css" title="pattren5" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="${pageContext.request.contextPath}/switcher/background1.css" title="background1" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="${pageContext.request.contextPath}/switcher/background2.css" title="background2" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="${pageContext.request.contextPath}/switcher/background3.css" title="background3" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="${pageContext.request.contextPath}/switcher/background4.css" title="background4" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="${pageContext.request.contextPath}/switcher/background5.css" title="background5" media="screen" />
        <!-- Color Css Files End -->
        
    </head>
    <body>

         


        <!-- Pre Loader
        ============================================ -->
        <div class="preloader">
            <div class="loading-center">
                <div class="loading-center-absolute">
                    <div class="object object_one"></div>
                    <div class="object object_two"></div>
                    <div class="object object_three"></div>
                </div>
            </div>
        </div>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <div class="as-mainwrapper">
            <div class="bg-white">
                <!-- header start -->
                <header class="header-area">
                    <div class="header-top-area ptb-10 hidden-sm hidden-xs">
                        <div class="container">
                            <div class="row">
                               <div class="col-md-4">
                                    <div class="account-usd text-left">
                                        <ul>
                                            <li><a href="#">My Account <i class="fa fa-angle-down"></i></a>
                                                <ul class="submenu-mainmenu">
                                                    <li><a href="/OnlineShoppingMail/product/tologin"><i class="fa fa-circle"></i>Login</a></li>
                                                    <li><a href="#"><i class="fa fa-circle"></i>My Account</a></li>
                                                    <li><a href="#"><i class="fa fa-circle"></i>My Wishlist</a></li>
                                                    <li><a href="/OnlineShoppingMail/product/show?id=${p.productid }"><i class="fa fa-circle"></i>My Cart</a></li>
                                                    <li><a href="/OnlineShoppingMail/product/indent"><i class="fa fa-circle"></i>Checkout</a></li>
                                                </ul>
                                            </li>
                                            <li class="currency"><a href="#">USD <i class="fa fa-angle-down"></i></a>
                                                <ul class="submenu-mainmenu">
                                                    <li><a href="#"><i class="fa fa-dollar"></i>USD</a></li>
                                                    <li><a href="#"><i class="fa fa-euro"></i>EURO</a></li>
                                                    <li><a href="#"><i class="fa fa-gbp"></i>GBP</a></li>
                                                </ul>
                                            </li>
                                            <li class="language"><a href="#"><img src="${pageContext.request.contextPath}/img/icon/eng.png" alt="">English <i class="fa fa-angle-down"></i></a>
                                                <ul class="submenu-mainmenu">
                                                    <li><a href="#"><img src="${pageContext.request.contextPath}/img/icon/eng.jpg" alt="">English</a></li>
                                                    <li><a href="#"><img src="${pageContext.request.contextPath}/img/icon/ger.jpg" alt="">German</a></li>
                                                    <li><a href="#"><img src="${pageContext.request.contextPath}/img/icon/fren.jpg" alt="">French</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                               </div>
                               <div class="col-md-4">
                                   <div class="social-icons text-center">
                                       <ul>
                                           <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                           <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                           <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                           <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                           <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                       </ul>
                                   </div>
                               </div>
                               <div class="col-md-4">
                                    <div class="top-right">
                                        <div class="top-login-cart">
                                            <ul>
                                                <li class=" hidden-xs"><a href="/OnlineShoppingMail/product/tologin">Login or Register</a></li>
                                                <li class=" hidden-xs"><a href="/OnlineShoppingMail/product/indent">Checkout</a></li>
                                                <li><a href="/OnlineShoppingMail/product/show?id=${p.productid }"><img src="${pageContext.request.contextPath}/img/icon/cart_red.png" alt="cart">Cart (3)</a>
                                                    <ul class="submenu-mainmenu">
                                                        <li class="single-cart-item clearfix">
                                                            <span class="cart-img">
                                                                <a href="#"><img src="${pageContext.request.contextPath}/img/cart/1.jpg" alt=""></a>
                                                            </span>
                                                            <span class="cart-info">
                                                                <a href="#">Eletria ostma</a>
                                                                <span>$150 x 2</span>
                                                            </span>
                                                            <span class="trash-cart">
                                                                <a href="#"><i class="fa fa-trash-o"></i></a>
                                                            </span>    
                                                        </li>
                                                        <li class="single-cart-item clearfix">
                                                            <span class="cart-img">
                                                                <a href="#"><img src="${pageContext.request.contextPath}/img/cart/2.jpg" alt=""></a>
                                                            </span>
                                                            <span class="cart-info">
                                                                <a href="#">Celletria ostma</a>
                                                                <span>$120 x 1</span>
                                                            </span>
                                                            <span class="trash-cart">
                                                                <a href="#"><i class="fa fa-trash-o"></i></a>
                                                            </span>    
                                                        </li>
                                                        <li class="single-cart-item clearfix">
                                                            <span class="cart-img">
                                                                <a href="#"><img src="${pageContext.request.contextPath}/img/cart/3.jpg" alt=""></a>
                                                            </span>
                                                            <span class="cart-info">
                                                                <a href="#">Pelletria ostma</a>
                                                                <span>$100 x 2</span>
                                                            </span>
                                                            <span class="trash-cart">
                                                                <a href="#"><i class="fa fa-trash-o"></i></a>
                                                            </span>    
                                                        </li>
                                                        <li>
                                                            <span class="sub-total-cart text-center">
                                                                Sub Total <span>$620</span>
                                                                <a href="/OnlineShoppingMail/product/show?id=${p.productid }" class="view-cart active">View Cart</a>
                                                                <a href="/OnlineShoppingMail/product/indent" class="view-cart">Checkout</a>
                                                            </span>
                                                        </li>    
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                   </div>    
                               </div>
                            </div>
                        </div>   
                    </div>
                    <div class="logo-info-area ptb-35">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-3 col-sm-6 col-xs-12">
                                    <div class="header-logo">
                                        <a href="/OnlineShoppingMail/product/index"><img src="${pageContext.request.contextPath}/img/logo/1.png" alt="shofixe"></a>
                                    </div>
                                </div>
                                <div class="col-md-3 hidden-sm hidden-xs">
                                    <div class="info">
                                        <div class="info-icon">

                                        </div>
                                        <div class="info-text">
                                            <h4>+88 (012) 564 979 56</h4>
                                            <p>We are open 9 am - 10pm</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 hidden-sm hidden-xs">
                                    <div class="info">
                                        <div class="info-icon">

                                        </div>
                                        <div class="info-text">
                                            <h4>info@shofixe.com</h4>
                                            <p>You can mail us</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-6 col-xs-12">
                                    <div class="search-box">
                                        <img src="${pageContext.request.contextPath}/img/icon/search.png" alt="">
                                        <form action="/OnlineShoppingMail/product/search" method="post">
                                            <input type="text" name = "productname" placeholder="Search..."><input type = "submit" value="搜索">
                                            
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mainmenu-area text-center hidden-sm hidden-xs">
                        <nav>
                            <div class="mainmenu">
                                <ul>
                                    <li><a href="/OnlineShoppingMail/product/index">Home</a></li>
									<li><a href="/OnlineShoppingMail/product/view">Shop</a></li>
                                    <li><a href="/OnlineShoppingMail/product/show">Cart</a></li>
									<li><a href="/OnlineShoppingMail/product/indent">Checkout</a></li>
									<li><a href="contact.html">Contact</a></li>
                                </ul>
                            </div>
                        </nav>                  
                    </div>    
                    <!-- Mobile Menu Area start -->
                    <div class="mobile-menu-area">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                    <div class="mobile-menu">
                                        <nav id="dropdown">
                                            <ul>
                                                <li><a href="/OnlineShoppingMail/product/index">Home</a></li>
												<li><a href="/OnlineShoppingMail/product/view">Shop</a></li>
												<li><a href="/OnlineShoppingMail/product/show?id=${p.productid }">Cart</a></li>
												<li><a href="/OnlineShoppingMail/product/indent">Checkout</a></li>
												<li><a href="contact.html">Contact</a></li>
                                            </ul>
                                        </nav>
                                    </div>					
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Mobile Menu Area end -->		   
                </header>
                <!-- header end -->
                <!-- banner start -->
                <div class="banner-area ptb-110">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="banner-text text-center">
                                    <div class="banner-title">
                                        <h2 class="text-uppercase">products</h2>
                                    </div>
                                    <div class="breadcrumbs">
                                        <ul>
                                            <li><a href="/OnlineShoppingMail/product/index">Home</a> ></li>
                                            <li class="text-capitalize">shop</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- banner end -->
                <!-- shop start -->
                <div class="shop-area mt-90">
                    <div class="container">
                        <div class="row">
                            <div class="shop-item-filter">
                                <div class="col-lg-4 col-md-3 col-sm-5 col-xs-5">
                                    <div class="shop-tab clearfix">
                                        <!-- Nav tabs -->
                                        <ul role="tablist">
                                            <li role="presentation" class="active"><a data-toggle="tab" role="tab" aria-controls="grid" class="grid-view" href="#grid"><i class="fa fa-th"></i></a></li>
                                            <li role="presentation"><a data-toggle="tab" role="tab" aria-controls="list" class="list-view" href="#list"><i class="fa fa-list"></i></a></li>
                                        </ul>
                                    </div>
                                </div>    
                                <div class="col-lg-4 col-md-5 hidden-sm hidden-xs">      
                                    <div class="filter-by">
                                        <h4>Short by: </h4>
                                        <form action="#">
                                            <div class="select-filter">
                                                <select>
                                                  <option value="color">Position</option>
                                                  <option value="name">Name</option>
                                                  <option value="brand">Brand</option>
                                                </select> 
                                            </div>
                                        </form>								
                                    </div>
                                    <div class="filter-by">
                                        <h4>Show: </h4>
                                        <form action="#">
                                            <div class="select-filter">
                                                <select>
                                                  <option value="10">12</option>
                                                  <option value="20">16</option>
                                                  <option value="30">20</option>
                                                </select> 
                                            </div>
                                        </form>	
                                    </div>
                                </div> 
                                <div class="col-lg-4 col-md-4 col-sm-7 col-xs-7">
                                    <div class="page-menu float-right">     
                                        <ul>
                                            <li class="li-page">page: </li>
                                            <li class="active"><a href="#">1</a></li>
                                            <li><a href="#">2</a></li>
                                            <li class="hidden-xs"><a href="#">3</a></li>
                                            <li class="hidden-xs"><a href="#">4</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                        </ul>
                                    </div>
                                </div>    
                            </div>
                        </div>
                        
                        <div class="clearfix"></div>
                        
                       
                        <div class="tab-content mt-25">
                            <div id="grid" class="tab-pane active" role="tabpanel">
                                <div class="row">
                                <c:forEach items="${list }" var="p">
                                    <div class="col-xs-12 col-width">
                                    
                                        <div class="single-product mb-30">
                                        	 
                                            <div class="single-product-item clearfix">
                                            	
                                                <div class="single-product-img clearfix">
                                                    <a href="product?id=${p.productid }">
                                                        <img class="primary-image" src="${pageContext.request.contextPath}/${p.productimg}" alt="">
                                                    </a>
                                                    <div class="wish-icon-hover text-center clearfix">
                                                        <div class="hover-text">
                                                           
                                                            <ul>
                                                                <li><a href="/OnlineShoppingMail/product/cart?productid=${p.productid }" data-toggle="tooltip" title="Shopping Cart"><i class="fa fa-shopping-cart"></i></a></li>
                                                                <li><a class="modal-view" href="" data-toggle="modal" data-target="#productModal" title="商品详情"><i class="fa fa-eye"></i></a></li>
                                                                <li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>
                                                            </ul>
                                                        </div> 
                                                        </div>
                                                        </div>
                                                        
                                                        
                                                    </div>
                                                </div>
                                                
                                                <div class="single-product-info clearfix">
                                                    <div class="pro-rating">  
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>  
                                                    </div> 
                                                    <div class="pro-price" float="left" display="block">
                                                        <span class="new-price">${p.originalprice }</span>
                                                        <span class="old-price">${p.discountprice }</span>
                                                    </div> 
                                                    <h3><a href="#">${p. productname }</a></h3>  
                                                </div>
                                                 
                                            </div>
                                            <div class="new-sale">
                                                <span class="black hidden-sm">new</span>
                                                <span class="red hidden-sm">hot</span>
                                            </div>
                                            </c:forEach>
                                               
                                        </div>
                                  
                               </div>
                            </div>
                        </div>  
                    </div>
                    <div class="page-menu float-right">     
                                        
                                    </div>
                   
                </div> 
                <!-- shop end -->                    
                <!-- client area start -->
                <div class="client-area ptb-90">
                    <div class="container">
                        <div class="row">
                            <div class="client-owl">
                                <div class="col-xs-12">
                                    <div class="single-client">
                                        <div class="single-client-img plr-40">
                                            <a href="#"><img src="${pageContext.request.contextPath}/img/client/1.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-client">
                                        <div class="single-client-img plr-40">
                                            <a href="#"><img src="${pageContext.request.contextPath}/img/client/2.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-client">
                                        <div class="single-client-img plr-40">
                                            <a href="#"><img src="${pageContext.request.contextPath}/img/client/3.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-client">
                                        <div class="single-client-img plr-40">
                                            <a href="#"><img src="${pageContext.request.contextPath}/img/client/4.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-client">
                                        <div class="single-client-img plr-40">
                                            <a href="#"><img src="${pageContext.request.contextPath}/img/client/5.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-client">
                                        <div class="single-client-img plr-40">
                                            <a href="#"><img src="${pageContext.request.contextPath}/img/client/1.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-client">
                                        <div class="single-client-img plr-40">
                                            <a href="#"><img src="${pageContext.request.contextPath}/img/client/2.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-client">
                                        <div class="single-client-img plr-40">
                                            <a href="#"><img src="${pageContext.request.contextPath}/img/client/3.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-client">
                                        <div class="single-client-img plr-40">
                                            <a href="#"><img src="${pageContext.request.contextPath}/img/client/4.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-client">
                                        <div class="single-client-img plr-40">
                                            <a href="#"><img src="${pageContext.request.contextPath}/img/client/5.png" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                            </div>    
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="client-button text-center pt-35">
                                    <a href='#' class='section-button'>View More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- client area end -->
                <!-- service area end -->
                <div class="service-area mb-10">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-3 col-sm-4 col-xs-12">
                                <div class="single-service text-center">
                                    <div class="single-service-content ptb-40">
                                        <div class="single-service-icon-wrapper">
                                            <div class="single-service-icon">
                                                <img src="${pageContext.request.contextPath}/img/icon/5.png" alt="">
                                            </div>
                                        </div>    
                                        <div class="single-service-info">
                                            <h4 class="text-uppercase">free shipping</h4>
                                            <p>Free for all product</p>
                                        </div> 
                                    </div>
                                </div>
                            </div> 
                            <div class="col-md-3 col-sm-4 col-xs-12">   
                                <div class="single-service text-center">
                                    <div class="single-service-content ptb-40">
                                        <div class="single-service-icon-wrapper">
                                            <div class="single-service-icon">
                                                <img src="${pageContext.request.contextPath}/img/icon/7.png" alt="">
                                            </div>
                                        </div>    
                                        <div class="single-service-info">
                                            <h4 class="text-uppercase">order online</h4>
                                            <p>www.shofixe.com</p>
                                        </div>
                                    </div>    
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-4 col-xs-12">    
                                <div class="single-service text-center">
                                    <div class="single-service-content ptb-40">
                                        <div class="single-service-icon-wrapper">
                                            <div class="single-service-icon">
                                                <img src="${pageContext.request.contextPath}/img/icon/9.png" alt="">
                                            </div>
                                        </div>    
                                        <div class="single-service-info">
                                            <h4 class="text-uppercase">money back</h4>
                                            <p>money back guarantee</p>
                                        </div>
                                    </div>    
                                </div>
                            </div>
                            <div class="col-md-3 hidden-sm col-xs-12">    
                                <div class="single-service text-center">
                                    <div class="single-service-content ptb-40">
                                        <div class="single-service-icon-wrapper">
                                            <div class="single-service-icon">
                                                <img src="${pageContext.request.contextPath}/img/icon/10.png" alt="">
                                            </div>
                                        </div>    
                                        <div class="single-service-info">
                                            <h4 class="text-uppercase">gift coupon</h4>
                                            <p>surprise gift coupon</p>
                                        </div>
                                    </div>    
                                </div>
                            </div>    
                        </div>
                    </div>
                </div>
                <!-- service area end -->
                <!-- touch area end -->
                <div class="touch-area ptb-90">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="touch-left">
                                    <div class="touch-logo mb-35">
                                        <img src="${pageContext.request.contextPath}/img/logo/2.png" alt="">
                                    </div>
                                    <p>Lorem ipsum dolor sit amet, consectetur adi elit, sed do eiusmod tempor incididunt ut ore  dolore magna aliqua. Ut enim ad minim eniam</p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adi elit, sed do eiusmod tempor incididunt ut</p>
                                    <div class="social-icon">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="touch-right">
                                    <h2 class="text-uppercase">get in touch</h2>
                                    <form id="contact-form" action="mail.php" method="post">
                                        <input type="text" placeholder="Your name here..." name="name">
                                        <input type="text" placeholder="Your email here..." name="email">
                                        <textarea class="mtb-25" cols="30" rows="10" placeholder="Write message here..." name="message"></textarea>
                                        <button class="section-button" type="submit">send</button>
                                    </form>
                                    <p class="form-message"></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>    
                <!-- touch area end -->
                <!-- footer start -->
                <footer class="footer-area">
                    <div class="footer-middle-area ptb-60">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-4 col-sm-6 col-xs-12">
                                    <div class="footer-widget">
                                        <h5>Contact</h5>
                                        <div class="single-footer-contact">
                                            <div class="footer-icon">
                                                <i class="fa fa-map-marker"></i>
                                            </div>
                                            <div class="footer-contact-info">
                                                <p>8901 Marmora Raod, </p>
                                                <p>Glasgow, D04  89GR</p>
                                            </div>
                                        </div>
                                        <div class="single-footer-contact">
                                            <div class="footer-icon">
                                                <i class="fa fa-phone"></i>
                                            </div>
                                            <div class="footer-contact-info">
                                                <p>Telephone : (801) 4256  9856</p>
                                                <p>Telephone : (801) 4256  9658</p>
                                            </div>
                                        </div>
                                        <div class="single-footer-contact">
                                            <div class="footer-icon">
                                                <i class="fa fa-globe"></i>
                                            </div>
                                            <div class="footer-contact-info">
                                                <p>Email : <a href="#">admin@power-boosts.com</a></p>
                                                <p>Web : <a href="http://sc.chinaz.com/">sc.chinaz.com</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <div class="footer-widget">
                                        <h5>Company</h5>
                                        <ul>
                                            <li><a href="/OnlineShoppingMail/product/index"><i class="fa fa-circle"></i>Home</a></li>
                                            <li><a href="#"><i class="fa fa-circle"></i>About us</a></li>
                                            <li><a href="contact.html"><i class="fa fa-circle"></i>Contact us</a></li>
                                            <li><a href="#"><i class="fa fa-circle"></i>Our blog</a></li>
                                            <li><a href="#"><i class="fa fa-circle"></i>Supports center</a></li>
                                            <li><a href="#"><i class="fa fa-circle"></i>Privacy policy</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-3 hidden-sm col-xs-12">
                                    <div class="footer-widget">
                                        <h5>Support</h5>
                                        <ul>
                                            <li><a href="#"><i class="fa fa-circle"></i>Delivery information</a></li>
                                            <li><a href="#"><i class="fa fa-circle"></i>Order tracking</a></li>
                                            <li><a href="#"><i class="fa fa-circle"></i>Return product</a></li>
                                            <li><a href="#"><i class="fa fa-circle"></i>Gift card</a></li>
                                            <li><a href="#"><i class="fa fa-circle"></i>Home delivery</a></li>
                                            <li><a href="#"><i class="fa fa-circle"></i>Online support</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-2 col-sm-3 col-xs-12">
                                    <div class="footer-widget">
                                        <h5>Information</h5>
                                        <ul>
                                            <li><a href="#"><i class="fa fa-circle"></i>Payment option</a></li>
                                            <li><a href="#"><i class="fa fa-circle"></i>Shipping</a></li>
                                            <li><a href="/OnlineShoppingMail/product/indent"><i class="fa fa-circle"></i>Checkout</a></li>
                                            <li><a href="#"><i class="fa fa-circle"></i>Discount</a></li>
                                            <li><a href="#"><i class="fa fa-circle"></i>Sitemap</a></li>
                                            <li><a href="#"><i class="fa fa-circle"></i>Service</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="footer-bottom-area ptb-25">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-4 col-sm-6">
                                    <div class="copyright">
                                        <p>Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="footer-menu text-center">
                                        <nav>
                                            <ul>
                                                <li><a href="">Site Map</a></li>
                                                <li><a href="contact.html">Contact Us</a></li>
                                                <li class="hidden-md hidden-xs"><a href="#">Wish List</a></li>
                                                <li><a href="#">Newsletter</a></li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                                <div class="col-md-4 hidden-sm">
                                    <div class="payment text-right">
                                        <img src="${pageContext.request.contextPath}/img/payment/1.png" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- footer end -->
            </div>
        </div>        
        <!-- QUICKVIEW PRODUCT -->
        <div id="quickview-wrapper">
            <!-- Modal -->
            <div class="modal fade" id="productModal" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>
                        <div class="modal-body">
                            <div class="modal-product">
                                <div class="product-images">
                                    <div class="main-image images">
                                        <img alt="" src="${pageContext.request.contextPath}/img/product/static2.jpg">
                                    </div>
                                </div><!-- .product-images -->

                                <div class="product-info">
                                    <h1>Diam quis cursus</h1>
                                    <div class="price-box">
                                        <p class="price"><span class="special-price"><span class="amount">$132.00</span></span></p>
                                    </div>
                                    <a href="/OnlineShoppingMail/product/view" class="see-all">See all features</a>
                                    <div class="quick-add-to-cart">
                                        <form method="post" class="cart">
                                            <div class="numbers-row">
                                                <input type="number" id="french-hens" value="3">
                                            </div>
                                            <button class="single-add-to-cart-button" type="submit">Add to cart</button>
                                        </form>
                                    </div>
                                    <div class="quick-desc">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum.
                                    </div>
                                    <div class="social-sharing">
                                        <div class="widget widget_socialsharing_widget">
                                            <h3 class="widget-title-modal">Share this product</h3>
                                            <ul class="social-icons">
                                                <li><a target="_blank" title="Facebook" href="#" class="facebook social-icon"><i class="fa fa-facebook"></i></a></li>
                                                <li><a target="_blank" title="Twitter" href="#" class="twitter social-icon"><i class="fa fa-twitter"></i></a></li>
                                                <li><a target="_blank" title="Pinterest" href="#" class="pinterest social-icon"><i class="fa fa-pinterest"></i></a></li>
                                                <li><a target="_blank" title="Google +" href="#" class="gplus social-icon"><i class="fa fa-google-plus"></i></a></li>
                                                <li><a target="_blank" title="LinkedIn" href="#" class="linkedin social-icon"><i class="fa fa-linkedin"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div><!-- .product-info -->
                            </div><!-- .modal-product -->
                        </div><!-- .modal-body -->
                    </div><!-- .modal-content -->
                </div><!-- .modal-dialog -->
            </div>
            <!-- END Modal -->
        </div>
        <!-- END QUICKVIEW PRODUCT -->
        
       	<!-- jquery
		============================================ -->		
        <!-- Color Switcher -->
        <div class="ec-colorswitcher">
            <a class="ec-handle" href="#"><i class="zmdi zmdi-settings"></i></a>
            <h3>Style Switcher</h3>
            <div class="ec-switcherarea">
                <h6>Select Layout</h6>
                <div class="layout-btn">
                    <a href="#" class="ec-boxed"><span>Boxed</span></a>
                    <a href="#" class="ec-wide"><span>Wide</span></a>
                </div>
                <h6>Chose Color</h6>
                <ul class="ec-switcher">
                    <li><a href="#" class="cs-color-1 styleswitch" data-rel="color-one"></a></li>
                    <li><a href="#" class="cs-color-2 styleswitch" data-rel="color-two"></a></li>
                    <li><a href="#" class="cs-color-3 styleswitch" data-rel="color-three"></a></li>
                    <li><a href="#" class="cs-color-4 styleswitch" data-rel="color-four"></a></li>
                    <li><a href="#" class="cs-color-5 styleswitch" data-rel="color-five"></a></li>
                    <li><a href="#" class="cs-color-6 styleswitch" data-rel="color-six"></a></li>
                    <li><a href="#" class="cs-color-7 styleswitch" data-rel="color-seven"></a></li>
                    <li><a href="#" class="cs-color-8 styleswitch" data-rel="color-eight"></a></li>
                    <li><a href="#" class="cs-color-9 styleswitch" data-rel="color-nine"></a></li>
                    <li><a href="#" class="cs-color-10 styleswitch" data-rel="color-ten"></a></li>
                </ul>
                <div class="ec-pattren">
                    <h6>Chose Pattren</h6>
                    <div class="pattren-wrap">
                        <a href="#" data-rel="pattren1" class="styleswitch"><img src="${pageContext.request.contextPath}/img/ec-pattren/pattren1.jpg" alt=""></a>
                        <a href="#" data-rel="pattren2" class="styleswitch"><img src="${pageContext.request.contextPath}/img/ec-pattren/pattren2.jpg" alt=""></a>
                        <a href="#" data-rel="pattren3" class="styleswitch"><img src="${pageContext.request.contextPath}/img/ec-pattren/pattren3.jpg" alt=""></a>
                        <a href="#" data-rel="pattren4" class="styleswitch"><img src="${pageContext.request.contextPath}/img/ec-pattren/pattren4.jpg" alt=""></a>
                        <a href="#" data-rel="pattren5" class="styleswitch"><img src="${pageContext.request.contextPath}/img/ec-pattren/pattren5.jpg" alt=""></a>
                    </div>
                </div>
                <div class="ec-background">
                    <h6>Chose Background</h6>
                    <div class="background-wrap">
                        <a href="#" data-rel="background1" class="styleswitch"><img src="${pageContext.request.contextPath}/img/ec-background/bg-1.jpg" alt=""></a>
                        <a href="#" data-rel="background2" class="styleswitch"><img src="${pageContext.request.contextPath}/img/ec-background/bg-2.jpg" alt=""></a>
                        <a href="#" data-rel="background3" class="styleswitch"><img src="${pageContext.request.contextPath}/img/ec-background/bg-3.jpg" alt=""></a>
                        <a href="#" data-rel="background4" class="styleswitch"><img src="${pageContext.request.contextPath}/img/ec-background/bg-4.jpg" alt=""></a>
                        <a href="#" data-rel="background5" class="styleswitch"><img src="${pageContext.request.contextPath}/img/ec-background/bg-5.jpg" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Color Switcher end -->	
       	<!-- jquery
		============================================ -->		
        <script src="${pageContext.request.contextPath}/js/vendor/jquery-1.12.4.min.js"></script>
		<!-- bootstrap JS
		============================================ -->		
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>		
		<!-- meanmenu JS
		============================================ -->		
        <script src="${pageContext.request.contextPath}/js/jquery.meanmenu.js"></script>
		<!-- wow JS
		============================================ -->		
        <script src="${pageContext.request.contextPath}/js/wow.min.js"></script>
		<!-- owl.carousel JS
		============================================ -->		
        <script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
		<!-- counterdown JS
		============================================ -->		
        <script src="${pageContext.request.contextPath}/js/jquery.countdown.min.js"></script>
        <!-- Video Player JS
		============================================ -->		
        <script src="${pageContext.request.contextPath}/js/jquery.mb.YTPlayer.js"></script>
        <!-- AJax Chimp JS
        ============================================ -->		
        <script src="${pageContext.request.contextPath}/js/jquery.ajaxchimp.min.js"></script> 
		<!-- price slider JS
		============================================ -->		
        <script src="${pageContext.request.contextPath}/js/jquery-price-slider.js"></script> 
		<!-- elevator JS
		============================================ -->		
        <script src="${pageContext.request.contextPath}/js/jquery.elevateZoom-3.0.8.min.js"></script> 
		<!-- scrollUp JS
		============================================ -->		
        <script src="${pageContext.request.contextPath}/js/jquery.scrollUp.min.js"></script>
		<!-- plugins JS
		============================================ -->		
        <script src="${pageContext.request.contextPath}/js/plugins.js"></script>
   		<!-- Nevo Slider js
		============================================ -->         
		<script type="text/javascript" src="${pageContext.request.contextPath}/lib/custom-slider/js/jquery.nivo.slider.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/lib/custom-slider/home.js"></script>          		 
		<!-- textillate js
		============================================ -->         
        <script src="${pageContext.request.contextPath}/js/jquery.textillate.js"></script>      		 
        <script src="${pageContext.request.contextPath}/js/jquery.lettering.js"></script>  
        <!-- animated headline js
		============================================ -->         
        <script src="${pageContext.request.contextPath}/js/animate-heading.js"></script>  
        <!-- ajax js
		============================================ -->         
        <script src="${pageContext.request.contextPath}/js/ajax-mail.js"></script>     		 
		<!-- main JS
		============================================ -->		
        <script src="${pageContext.request.contextPath}/js/styleswitch.js"></script>	
        <script src="${pageContext.request.contextPath}/js/main.js"></script>
    </body>
</html>

