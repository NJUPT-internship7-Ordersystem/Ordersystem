<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
</head>
<body>

	<!-- 顶部tab -->
	<div class="tab-header">
		<div class="inner">
			<div class="pull-left">
				<div class="pull-left">胡鸿康   <span class="cr">欢迎你哟！！</span></div>
			</div>
			<div class="pull-right">
				<c:if test="${sessionScope.user==null}">
					<a href="login"><span class="cr">登录</span></a>
					<a href="register">注册</a>
				</c:if>
				<c:if test="${sessionScope.user!=null}">
					<a href=""><span class="cr">${user.username}</span></a>
					<a href="logout">退出</a>
					<a href="my">个人中心</a>
					<a href="order">我的订单</a>
				</c:if>
			</div>
		</div>
	</div>

	<!-- 搜索栏 -->
	<div class="top-search">
		<div class="inner">
            <a class="logo" href="index">
            	<img src="images/icons/logo.jpg" alt="" class="cover">
            </a>
           
			<div class="cart-box">
				<a href="shopcart" class="cart-but">
					<i class="iconfont icon-shopcart cr fz16"></i> 购物车 ${sessionScope.total==null ? 0 : sessionScope.total} 件
				</a>
			</div>
		</div>
	</div>
	
	
	<!-- 首页导航栏 -->
	<div class="top-nav bg3">
		<div class="nav-box inner">
			<ul class="nva-list">
				<a href="index"><li <c:if test="${flag==-1}">class="active"</c:if>>首页</li></a>
				<c:forEach var="type" items="${typeList}">
					<a href="goods?typeid=${type.id}"><li <c:if test="${flag==type.id}">class="active"</c:if>>${type.name}</li></a>
				</c:forEach>
			</ul>
			<ul class="nva-list" style="float:right;">	
				<a href="../admin/login" target="_blank"><li>后台管理</li></a>	
			</ul>
		</div>
	</div>

</body>
</html>