<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>无锡旅游行程助手</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/css/main.css'/>">
  </head>
  
  <body>
	<header id="header">
		<div class="site-topbar">
			<div class="container">
				<div class="topbar-nav">
					<a href="<c:url value='/jsps/main.jsp'/>" >HOME</a>
					<span class="sep">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</span>
					<a href="<c:url value='/jsps/maphelper.jsp'/>">行程规划</a>
					<span class="sep">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</span>
					<a href="<c:url value='/jsps/map.jsp'/>">地图</a>
					<span class="sep">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</span>
					<a href="<c:url value='/jsps/bus.jsp'/>">公交查询</a>
					<span class="sep">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</span>
					<a href="<c:url value='/jsps/busroute.jsp'/>">公交线路</a>
					<span class="sep">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</span>
					<a href="<c:url value='/jsps/drive.jsp'/>">驾车查询</a>
					<span class="sep">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</span>
					<a href="<c:url value='/jsps/walk.jsp'/>">步行查询</a>
				</div>
				<div class="topbar-info" id="J_userInfo">
					<c:choose>
						<c:when test="${empty sessionScope.sessionUser }">
			  				<a class="link" href="<c:url value='/jsps/user/login.jsp'/>" target="_parent">登录</a>
			  				<span class="sep">|</span>
			  				<a class="link" href="<c:url value='/jsps/user/regist.jsp'/>" target="_parent">注册</a>	
						</c:when>
						<c:otherwise>
			      			会员：${sessionScope.sessionUser.loginname }&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
			      			<!--
			  				<a href="<c:url value='/CartItemServlet?method=myCart'/>" target="body">我的购物车</a>&nbsp;&nbsp;|&nbsp;&nbsp;
			  				<a href="<c:url value='/OrderServlet?method=myOrders'/>" target="body">我的传智订单</a>&nbsp;&nbsp;|&nbsp;&nbsp;
			  				-->
			  				<a href="<c:url value='/jsps/user/pwd.jsp'/>" target="body">修改密码</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
			  				<a href="<c:url value='/UserServlet?method=quit'/>" target="_parent">退出</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</header>
<div id="adver">
	<img src="<c:url value='/jsps/img/adver.jpg'/>" alt="">
	<!--  
	<div class="center"></div>
	<div class="center copy">
		<input type="text" class="search" placeholder="请输入旅游景点">
		<button class="button">搜索</button>
	</div>
	-->
</div>

<div id="tour">
	<section class="center">
		<h2>热门旅游</h2>
		<p>自然风光, 人文景观, 古镇乡村 等各种最新热门旅游推荐</p>
	</section>
	<figure>
		<a href="http://www.mafengwo.cn/poi/4479.html"><img src="<c:url value='/view_img/dongfangmingzhu.jpg'/>" alt=""></a>
		<figcaption>
			<div class="tour_title">
				<strong class="title">&lt;东方明珠&gt;</strong> 东方明珠广播电视塔，国家首批AAAAA级旅游景区塔内有太空舱、旋转餐厅、上海城市历史发展陈列馆等景观和设施，1995年被列入上海十大新景观之一。
			</div>
			<div class="info">
				<em class="sat">满意度 87%</em>
				<span class="price"> <strong>4.7</strong> 分</span>
			</div>
		</figcaption>
	</figure>
	<figure>
		<a href="http://www.mafengwo.cn/poi/4978.html"><img src="<c:url value='/view_img/nanjinglu.jpg'/>" alt=""></a>
		<figcaption>
			<div class="tour_title">
				<strong class="title">&lt;南京路&gt;</strong> 一直以来被誉为中华商业第一街，素有"十里南京路，一个步行街"的称号，路旁遍布着各种上海老字号商店及商城。
			</div>
			<div class="info">
				<em class="sat">满意度 97%</em>
				<span class="price"> <strong>4.9</strong> 分</span>
			</div>
		</figcaption>
	</figure>
	<figure>
		<a href=""><img src="<c:url value='/view_img/shanghaidongwuyuan.jpg'/>" alt=""></a>
		<figcaption>
			<div class="tour_title">
				<strong class="title">&lt;上海动物园&gt;</strong> 上海动物园属于国家级大型动物园，是全国十佳动物园之一，中国第二大城市动物园。
			</div>
			<div class="info">
				<em class="sat">满意度 90%</em>
				<span class="price"> <strong>4.8</strong> 分</span>
			</div>
		</figcaption>
	</figure>
	<figure>
		<a href=""><img src="<c:url value='/view_img/shanghaidishini.jpg'/>" alt=""></a>
		<figcaption>
			<div class="tour_title">
				<strong class="title">&lt;上海迪士尼乐园&gt;</strong> 上海迪士尼乐园，是中国内地首座迪士尼主题乐园，并有许多全球首发游乐项目。
			</div>
			<div class="info">
				<em class="sat">满意度 97%</em>
				<span class="price"> <strong>4.9</strong> 分</span>
			</div>
		</figcaption>
	</figure>
	<figure>
		<a href=""><img src="<c:url value='/view_img/huanlegu.jpg'/>" alt=""></a>
		<figcaption>
			<div class="tour_title">
				<strong class="title">&lt;上海欢乐谷&gt;</strong> 上海欢乐谷，中国首个连锁主题公园品牌、国家4A级旅游景区。
			</div>
			<div class="info">
				<em class="sat">满意度 97%</em>
				<span class="price"> <strong>4.9</strong> 分</span>
			</div>
		</figcaption>
	</figure>
	<figure>
		<a href=""><img src="<c:url value='/view_img/shanghaikejiguan.jpg'/>" alt=""></a>
		<figcaption>
			<div class="tour_title">
				<strong class="title">&lt;上海科技馆&gt;</strong> 上海科技馆是对公众进行科普教育的公益性机构，是中国重要的科普教育基地和精神文明建设基地。
			</div>
			<div class="info">
				<em class="sat">满意度 95%</em>
				<span class="price"> <strong>4.8</strong> 分</span>
			</div>
		</figcaption>
	</figure>
	<figure>
		<a href=""><img src="<c:url value='/view_img/zhongguohanghaibowuguan.jpg'/>" alt=""></a>
		<figcaption>
			<div class="tour_title">
				<strong class="title">&lt;中国航海博物馆&gt;</strong> 中国航海博物馆是中国首个经国务院批准设立的国家级航海博物馆。
			</div>
			<div>
				<em class="sat">满意度 100%</em>
				<span class="price"> <strong>5</strong> 分</span>
			</div>
		</figcaption>
	</figure>
	<figure>
		<a href=""><img src="<c:url value='/view_img/congmingdaoguojiadizhigongyuan.jpg'/>" alt=""></a>
		<figcaption>
			<div class="tour_title">
				<strong class="title">&lt;崇明岛国家地质公园&gt;</strong> 南与嘉定、宝山隔江相望，北与江苏海门、启东一衣带水，犹如蕴含于长江巨龙口中一颗熠熠生辉的明珠.
			</div>
			<div class="info">
				<em class="sat">满意度 93%</em>
				<span class="price"> <strong>4.6</strong> 分</span>
			</div>
		</figcaption>
	</figure>
	<figure>
		<a href=""><img src="<c:url value='/view_img/dongfanglvzhou.jpg'/>" alt=""></a>
		<figcaption>
			<div class="tour_title">
				<strong class="title">&lt;东方绿舟&gt;</strong> 是上海唯一的集拓展培训、青少年社会实践、团队活动以及休闲旅游为一体的大型公园。
			</div>
			<div class="info">
				<em class="sat">满意度 100%</em>
				<span class="price"> <strong>5</strong> 分</span>
			</div>
		</figcaption>
	</figure>
</div>

</body>
</html>