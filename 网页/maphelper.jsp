<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>无锡旅游地图</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/map/style.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/map/map.css'/>">
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=1.5&ak=GZqVmX5xXEo0fmP1xyzHdbDB"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/map/maphelper.css'/>">

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

	<div class="plan_center">
		<div class="plan_creat_warp">
			<div class="plan_foundcity_content" id="planselect">
				<div class="titles">
					<strong>选择目的地</strong>
				</div>
				<div class="contents">
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p style= "height:40px">东方明珠  <button onclick="dome0()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>上海迪士尼度假区  <button onclick="dome1()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>上海野生动物园  <button onclick="dome2()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>金茂大厦  <button onclick="dome3()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>上海环球金融中心  <button onclick="dome4()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>上海杜莎夫人蜡像  <button onclick="dome5()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>长风海洋世界  <button onclick="dome6()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>外滩 <button onclick="dome7()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>中国航海博物馆  <button onclick="dome8()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>欢乐谷  <button onclick="dome9()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>佘山国家森林公园  <button onclick="dome10()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>东平国家森林公园 <button onclick="dome11()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>世纪公园  <button onclick="dome12()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>上海影视乐园  <button onclick="dome13()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>上海科技馆 <button onclick="dome14()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>明珠湖公园  <button onclick="dome15()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>月湖雕塑公园  <button onclick="dome16()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>西沙湿地公园  <button onclick="dome17()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>朱家角古镇景区  <button onclick="dome18()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>东方绿洲 <button onclick="dome19()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>上海海湾国家湿地公园  <button onclick="dome20()"> Add </button> </p>
						</li>
					</div>
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>顾村公园 <button onclick="dome_0()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>南京路步行街 <button onclick="dome_1()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>东滩湿地公园  <button onclick="dome_2()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>周浦花海 <button onclick="dome_3()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>上海动物园  <button onclick="dome_4()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>崇明岛国家湿地公园  <button onclick="dome_5()"> Add </button> </p>
						</li>
					</div>
		
					<div class="contents_li" style="height:40px">
						<li style= "display:block;height:50px">
							<p>玛雅海滩水公园 <button onclick="dome_7()"> Add </button> </p>
						</li>
					</div>
		
				</div>
			</div>
			<div class="plan_myplan_content" id="planaim">
				<div class="titles">
					<strong>我的行程</strong>
				</div>
				<!--行程列表 -->
				<div class="lists" id="js_height_resize">
		
				</div>
		
				<div class="next">
					<a href="#" onClick="shade.style.display='block';Layer1.style.display='block';planselect.style.display='none';planaim.style.display='none';plancontainer.style.display='none'"></a>
				</div>
			</div>
			<div class="map" id="plancontainer"></div>
		</div>
		<div id="shade"></div>
		<div id="Layer1">
			<div id="win_top">行程优化 <a href="#" onClick="shade.style.display='none';Layer1.style.display='none';planselect.style.display='block';planaim.style.display='block';plancontainer.style.display='block'">关闭</a></div>
			<br />
			<div class="content">
				<div id="leftmap">
					<button onclick="but()">原本路线</button>
					<div id="seccontainer" style="display: none">
					</div>
		
					<div id="txta0">
					</div>
				</div>
		
		
		
				<div id="rightmap">
					<button onclick="sa()">模拟退火算法</button>

					<div id="seccontainer1" style="display: none">
		
					</div>
					<div id="thicontainer1">
						<textarea id="txta2" title="模拟退火" style="width:150px;height:80px"></textarea>
					</div>
				</div>
			</div>
		</div>
	</div>




<script type="text/javascript">

	var map = new BMap.Map("plancontainer");//在container容器中创建一个地图,参数container为div的id属性;
	var point = new BMap.Point(120.29056,31.534735);//定位
	map.centerAndZoom(point,13);                //将point移到浏览器中心，并且地图大小调整为16;
	map.addControl(new BMap.NavigationControl());
	map.addControl(new BMap.ScaleControl());
	map.addControl(new BMap.OverviewMapControl());
	map.addControl(new BMap.MapTypeControl());
	map.enableScrollWheelZoom();

	var point1 = new BMap.Point(121.506377,31.245105);
	var point2 = new BMap.Point(121.670502,31.146231);
	var point3 = new BMap.Point(121.728112,31.059636);
	var point4 = new BMap.Point(121.512154,31.240983);
	var point5 = new BMap.Point(121.514263,31.240165);
	var point6 = new BMap.Point(121.480041,31.2403);	
	var point7 = new BMap.Point(121.403627,31.230573);
	var point8 = new BMap.Point(121.497854,31.240722);
	var point9 = new BMap.Point(121.926031,30.902604);
	var point10 = new BMap.Point(121.22301,31.102519);
	var point11 = new BMap.Point(121.202527,31.100699);
	var point12 = new BMap.Point(121.487563,31.68975);	
	var point13 = new BMap.Point(121.557686,31.221875);
	var point14 = new BMap.Point(121.319354,31.016716);
	var point15 = new BMap.Point(121.548905,31.225379);
	var point16 = new BMap.Point(121.548905,31.225379);
	var point17 = new BMap.Point(121.212385,31.107131);
	var point18 = new BMap.Point(121.242264,31.731346);
	var point19 = new BMap.Point(121.014888,31.106905);	
	var point20 = new BMap.Point(121.697084,30.8675);
	var point21 = new BMap.Point(121.383744,31.347029);
	var point_1 = new BMap.Point(121.481407,31.240632);	
	var point_2 = new BMap.Point(121.955983,31.524021);
	var point_3 = new BMap.Point(121.652176,31.124064);
	var point_4 = new BMap.Point(121.369411,31.199269);
	var point_5 = new BMap.Point(121.237948,31.732706);
	var point_6 = new BMap.Point(121.217202,31.101275);

	var myArray = new Array;
	var arrays = new Array;
	var flag = 0;

	function add0()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("东方明珠");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome0()
	{
		add0();
		var marker1 = new BMap.Marker(point1);        // 创建标注
		map.addOverlay(marker1);                     // 将标注添加到地图中
		myArray[flag] = point1;
		var positions ={titles:"东方明珠",coordinate_x:120.217769,coordinate_y:31.454081};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray, {strokeColor:"blue", strokeWeight:6, strokeOpacity:0.5});
		map.addOverlay(polyline);
		//alert("name:" +positions.coordinate_x);
	}

	function add1()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("云湖");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome1()
	{
		add1();
		var marker2 = new BMap.Marker(point2);        // 创建标注
		map.addOverlay(marker2);                     // 将标注添加到地图中
		myArray[flag] = point2;
		var positions ={titles:"云湖",coordinate_x:119.593326,coordinate_y:31.244026};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add2()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("上海迪士尼度假区");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome2()
	{
		add2();
		var marker3 = new BMap.Marker(point3);        // 创建标注
		map.addOverlay(marker3);                     // 将标注添加到地图中
		myArray[flag] = point3;
		var positions ={titles:"上海迪士尼度假区",coordinate_x:120.09987,coordinate_y:31.60758};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add3()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("上海野生动物园");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome3()
	{
		add3();
		var marker4 = new BMap.Marker(point4);        // 创建标注
		map.addOverlay(marker4);                     // 将标注添加到地图中
		myArray[flag] = point4;
		var positions ={titles:"上海野生动物园",coordinate_x:120.277352,coordinate_y:31.587558};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add4()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("金茂大厦");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome4()
	{
		add4();
		var marker5 = new BMap.Marker(point5);        // 创建标注
		map.addOverlay(marker5);                     // 将标注添加到地图中
		myArray[flag] = point5;
		var positions ={titles:"金茂大厦",coordinate_x:120.439903,coordinate_y:31.839942};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add5()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("上海环球金融中心");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome5()
	{
		add5();
		var marker6 = new BMap.Marker(point6);        // 创建标注
		map.addOverlay(marker6);                     // 将标注添加到地图中
		myArray[flag] = point6;
		var positions ={titles:"上海环球金融中心",coordinate_x:120.299321,coordinate_y:31.688649};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add6()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("上海杜莎夫人蜡像 ");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome6()
	{
		add6();
		var marker7 = new BMap.Marker(point7);        // 创建标注
		map.addOverlay(marker7);                     // 将标注添加到地图中
		myArray[flag] = point7;
		var positions ={titles:"上海杜莎夫人蜡像 ",coordinate_x:120.323941,coordinate_y:31.48591};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add7()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("长风海洋世界");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome7()
	{
		add7();
		var marker8 = new BMap.Marker(point8);        // 创建标注
		map.addOverlay(marker8);                     // 将标注添加到地图中
		myArray[flag] = point8;
		var positions ={titles:"长风海洋世界",coordinate_x:120.552611,coordinate_y:31.530304};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add8()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("外滩");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome8()
	{
		add8();
		var marker9 = new BMap.Marker(point9);        // 创建标注
		map.addOverlay(marker9);                     // 将标注添加到地图中
		myArray[flag] = point9;
		var positions ={titles:"外滩",coordinate_x:120.557284,coordinate_y:31.532935};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add9()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("中国航海博物馆");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome9()
	{
		add9();
		var marker10 = new BMap.Marker(point10);        // 创建标注
		map.addOverlay(marker10);                     // 将标注添加到地图中
		myArray[flag] = point10;
		var positions ={titles:"中国航海博物馆",coordinate_x:120.239237,coordinate_y:31.481722};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add10()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("欢乐谷");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome10()
	{
		add10();
		var marker11 = new BMap.Marker(point11);        // 创建标注
		map.addOverlay(marker11);                     // 将标注添加到地图中
		myArray[flag] = point11;
		var positions ={titles:"欢乐谷",coordinate_x:120.245147,coordinate_y:31.490814};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add11()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("佘山国家森林公园");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome11()
	{
		add11();
		var marker12 = new BMap.Marker(point12);        // 创建标注
		map.addOverlay(marker12);                     // 将标注添加到地图中
		myArray[flag] = point12;
		var positions ={titles:"佘山国家森林公园",coordinate_x:120.233462,coordinate_y:31.531296};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add12()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("东平国家森林公园");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome12()
	{
		add12();
		var marker13 = new BMap.Marker(point13);        // 创建标注
		map.addOverlay(marker13);                     // 将标注添加到地图中
		myArray[flag] = point13;
		var positions ={titles:"东平国家森林公园",coordinate_x:120.32999,coordinate_y:31.716029};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add13()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("世纪公园");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome13()
	{
		add13();
		var marker14 = new BMap.Marker(point14);        // 创建标注
		map.addOverlay(marker14);                     // 将标注添加到地图中
		myArray[flag] = point14;
		var positions ={titles:"世纪公园",coordinate_x:120.102223,coordinate_y:31.436611};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add14()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("上海影视乐园");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome14()
	{
		add14();
		var marker15 = new BMap.Marker(point15);        // 创建标注
		map.addOverlay(marker15);                     // 将标注添加到地图中
		myArray[flag] = point15;
		var positions ={titles:"上海影视乐园",coordinate_x:120.302613,coordinate_y:31.575976};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add15()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("明珠湖公园");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome15()
	{
		add15();
		var marker16 = new BMap.Marker(point16);        // 创建标注
		map.addOverlay(marker16);                     // 将标注添加到地图中
		myArray[flag] = point16;
		var positions ={titles:"明珠湖公园",coordinate_x:120.252265,coordinate_y:31.511242};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add16()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("东坡书院");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome16()
	{
		add16();
		var marker17 = new BMap.Marker(point17);        // 创建标注
		map.addOverlay(marker17);                     // 将标注添加到地图中
		myArray[flag] = point17;
		var positions ={titles:"明珠湖公园",coordinate_x:119.872205,coordinate_y:31.272156};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add17()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("月湖雕塑公园");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome17()
	{
		add17();
		var marker18 = new BMap.Marker(point18);        // 创建标注
		map.addOverlay(marker18);                     // 将标注添加到地图中
		myArray[flag] = point18;
		var positions ={titles:"月湖雕塑公园",coordinate_x:120.30716,coordinate_y:31.582605};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add18()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("西沙湿地公园");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome18()
	{
		add18();
		var marker19 = new BMap.Marker(point19);        // 创建标注
		map.addOverlay(marker19);                     // 将标注添加到地图中
		myArray[flag] = point19;
		var positions ={titles:"西沙湿地公园",coordinate_x:120.271451,coordinate_y:31.911273};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add19()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("朱家角古镇景区");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome19()
	{
		add19();
		var marker20 = new BMap.Marker(point20);        // 创建标注
		map.addOverlay(marker20);                     // 将标注添加到地图中
		myArray[flag] = point20;
		var positions ={titles:"朱家角古镇景区",coordinate_x:120.30894,coordinate_y:31.761571};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add20()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("东方绿洲");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome20()
	{
		add20();
		var marker21 = new BMap.Marker(point21);        // 创建标注
		map.addOverlay(marker21);                     // 将标注添加到地图中
		myArray[flag] = point21;
		var positions ={titles:"东方绿洲",coordinate_x:120.276868,coordinate_y:31.585874};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add_0()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("上海海湾国家湿地公园");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px";

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome_0()
	{
		add_0();
		var marker1 = new BMap.Marker(point_1);        // 创建标注
		map.addOverlay(marker1);                     // 将标注添加到地图中
		myArray[flag] = point_1;
		var positions ={titles:"上海海湾国家湿地公园",coordinate_x:119.824408,coordinate_y:31.366985};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray, {strokeColor:"blue", strokeWeight:6, strokeOpacity:0.5});
		map.addOverlay(polyline);
	}

	function add_1()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("顾村公园");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome_1()
	{
		add_1();
		var marker2 = new BMap.Marker(point_2);        // 创建标注
		map.addOverlay(marker2);                     // 将标注添加到地图中
		myArray[flag] = point_2;
		var positions ={titles:"顾村公园",coordinate_x:119.680087,coordinate_y:31.303594};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add_2()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("南京路步行街 ");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome_2()
	{
		add_2();
		var marker3 = new BMap.Marker(point_3);        // 创建标注
		map.addOverlay(marker3);                     // 将标注添加到地图中
		myArray[flag] = point_3;
		var positions ={titles:"南京路步行街 ",coordinate_x:120.278158,coordinate_y:31.912354};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add_3()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("东滩湿地公园");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome_3()
	{
		add_3();
		var marker3 = new BMap.Marker(point_4);        // 创建标注
		map.addOverlay(marker3);                     // 将标注添加到地图中
		myArray[flag] = point_4;
		var positions ={titles:"东滩湿地公园",coordinate_x:119.94034,coordinate_y:31.418848};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add_4()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("周浦花海");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome_4()
	{
		add_4();
		var marker3 = new BMap.Marker(point_5);        // 创建标注
		map.addOverlay(marker3);                     // 将标注添加到地图中
		myArray[flag] = point_5;
		var positions ={titles:"周浦花海",coordinate_x:120.291842,coordinate_y:31.940633};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add_5()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("上海动物园");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome_5()
	{
		add_5();
		var marker6 = new BMap.Marker(point_6);        // 创建标注
		map.addOverlay(marker6);                     // 将标注添加到地图中
		myArray[flag] = point_6;
		var positions ={titles:"上海动物园",coordinate_x:120.236234,coordinate_y:31.48564};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add_6()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("崇明岛国家湿地公园");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome_6()
	{
		add_6();
		var marker7 = new BMap.Marker(point_7);        // 创建标注
		map.addOverlay(marker7);                     // 将标注添加到地图中
		myArray[flag] = point_7;
		var positions ={titles:"崇明岛国家湿地公园",coordinate_x:120.308714,coordinate_y:31.576253};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add_7()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("玛雅海滩水公园");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome_7()
	{
		add_7();
		var marker8 = new BMap.Marker(point_8);        // 创建标注
		map.addOverlay(marker8);                     // 将标注添加到地图中
		myArray[flag] = point_8;
		var positions ={titles:"玛雅海滩水公园",coordinate_x:120.441076,coordinate_y:31.546884};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add_8()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("五明桥");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome_8()
	{
		add_8();
		var marker9 = new BMap.Marker(point_9);        // 创建标注
		map.addOverlay(marker9);                     // 将标注添加到地图中
		myArray[flag] = point_9;
		var positions ={titles:"五明桥",coordinate_x:120.108648,coordinate_y:31.42803};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add_9()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("华孝子祠");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome_9()
	{
		add_9();
		var marker10 = new BMap.Marker(point_10);        // 创建标注
		map.addOverlay(marker10);                     // 将标注添加到地图中
		myArray[flag] = point_10;
		var positions ={titles:"华孝子祠",coordinate_x:120.276818,coordinate_y:31.585605};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add_10()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("王昆仑故居");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome_10()
	{
		add_10();
		var marker11 = new BMap.Marker(point_11);        // 创建标注
		map.addOverlay(marker11);                     // 将标注添加到地图中
		myArray[flag] = point_11;
		var positions ={titles:"王昆仑故居",coordinate_x:120.226373,coordinate_y:31.52995};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add_11()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("雪浪山");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome_11()
	{
		add_11();
		var marker12 = new BMap.Marker(point_12);        // 创建标注
		map.addOverlay(marker12);                     // 将标注添加到地图中
		myArray[flag] = point_12;
		var positions ={titles:"雪浪山",coordinate_x:120.269526,coordinate_y:31.461687};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add_12()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("灵谷洞");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome_12()
	{
		add_12();
		var marker13 = new BMap.Marker(point_13);        // 创建标注
		map.addOverlay(marker13);                     // 将标注添加到地图中
		myArray[flag] = point_13;
		var positions ={titles:"灵谷洞",coordinate_x:119.753724,coordinate_y:31.227191};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add_13()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("梅园横山");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome_13()
	{
		add_13();
		var marker14 = new BMap.Marker(point_14);        // 创建标注
		map.addOverlay(marker14);                     // 将标注添加到地图中
		myArray[flag] = point_14;
		var positions ={titles:"梅园横山",coordinate_x:120.229628,coordinate_y:31.559685};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add_14()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("陶祖圣境");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome_14()
	{
		add_14();
		var marker15 = new BMap.Marker(point_15);        // 创建标注
		map.addOverlay(marker15);                     // 将标注添加到地图中
		myArray[flag] = point_15;
		var positions ={titles:"陶祖圣境",coordinate_x:119.734191,coordinate_y:31.191611};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add_15()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("十八湾湿地公园");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome_15()
	{
		add_15();
		var marker16 = new BMap.Marker(point_16);        // 创建标注
		map.addOverlay(marker16);                     // 将标注添加到地图中
		myArray[flag] = point_16;
		var positions ={titles:"十八湾湿地公园",coordinate_x:120.181132,coordinate_y:31.543992};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}

	function add_16()
	{
		var para = document.createElement("p");
		var node = document.createTextNode("张公洞");
		para.appendChild(node);
		para.style.fontSize = "20px";
		para.style.color= "#464545";
		para.style.fontFamily = "Microsoft YaHei";
		para.style.marginLeft = "45px";
		para.style.lineHeight = "37px"

		var obj=document.createElement("div");
		obj.style.lineHeight = "25px";
		obj.style.height = "38px";
		obj.style.width = "315px";
		obj.style.marginTop = "30px";
		obj.style.marginLeft = "15px";
		obj.style.background = "#ebf4e4";
		obj.style.borderTopLeftRadius = "5px";
		obj.style.borderTopRightRadius = "5px";
		obj.style.borderBottomLeftRadius = "5px";
		obj.style.borderBottomRightRadius = "5px";
		obj.appendChild(para);

		var element = document.getElementById("js_height_resize");
		element.appendChild(obj);
	};

	function dome_16()
	{
		add_16();
		var marker17 = new BMap.Marker(point_17);        // 创建标注
		map.addOverlay(marker17);                     // 将标注添加到地图中
		myArray[flag] = point_17;
		var positions ={titles:"张公洞",coordinate_x:119.789455,coordinate_y:31.257255};
		arrays.push(positions);
		flag++;
		var polyline = new BMap.Polyline(myArray);
		map.addOverlay(polyline);
	}



	document.getElementById("seccontainer").style.display = "block";
	var map1 = new BMap.Map("seccontainer");//在container容器中创建一个地图,参数container为div的id属性;
	var pointas = new BMap.Point(120.279627,31.488313);//定位
	map1.centerAndZoom(pointas,12);                //将point移到浏览器中心，并且地图大小调整为16;
	map1.addControl(new BMap.NavigationControl());
	map1.addControl(new BMap.ScaleControl());
	map1.addControl(new BMap.OverviewMapControl());
	map1.enableScrollWheelZoom();

	/*var aaa = [point1,point2,point3,point4]
	 var polygona = new BMap.Polygon(aaa, {strokeColor:"blue", strokeWeight:2, strokeOpacity:0.5});
	 map1.addOverlay(polygona);*/

	function show()
	{
		var arr = arrays;
		var arr_length = arr.length+1;
		var div = document.getElementById("txta0");
		var html = '<ul>';
		for (var i=0, j = arr.length; i<j ; i++)
		{
			var h = i+1;
			html += "<a>" + h + "." + arr[i].titles + "→" + "</a>";
			//tml += "<a>" + arr[i].titles + "</a>";
		}
		html += "<a>" + arr_length + "." + arr[0].titles+ "</a>";
		html += '</ul>';
		div.innerHTML = html;

	}
	var point_aim = new Array;
	function but()
	{
		//var point_aim = new Array;
		/*for(var i = 0;i<myArray.length;i++)
		 {
		 var point_aim = myArray[i];
		 var marker_aim = new BMap.Marker(point_aim);
		 map1.addOverlay(marker_aim);
		 }
		 var polygona = new BMap.Polygon(myArray, {strokeColor:"blue", strokeWeight:2, strokeOpacity:0.5});
		 map1.addOverlay(polygona);*/

		for(var i = 0;i<myArray.length;i++)
		{
			var ar = arrays[i];
			var x = ar.coordinate_x;
			var y = ar.coordinate_y;
			//alert("x:" + x + "y:" + y);
			var pointa = new BMap.Point(x,y);
			var marker_aim = new BMap.Marker(pointa);
			map1.addOverlay(marker_aim);
			point_aim[i] = pointa;
			var opts = {
				position : pointa,    // 指定文本标注所在的地理位置
				offset   : new BMap.Size(15, -35)    //设置文本偏移量
			}
			var massage = ar.titles;
			var label = new BMap.Label(massage, opts);  // 创建文本标注对象
			label.setStyle({
				color : "red",
				fontSize : "12px",
				height : "20px",
				lineHeight : "20px",
				fontFamily:"微软雅黑"
			});
			map1.addOverlay(label);
		}
		var polygona = new BMap.Polygon(point_aim, {strokeColor:"blue", strokeWeight:2, strokeOpacity:0.5});
		map1.addOverlay(polygona);
		show();
	}

	document.getElementById("seccontainer1").style.display = "block";
	var map2 = new BMap.Map("seccontainer1");//在container容器中创建一个地图,参数container为div的id属性;
	var pointas1 = new BMap.Point(120.279627,31.488313);//定位
	map2.centerAndZoom(pointas1,12);                //将point移到浏览器中心，并且地图大小调整为16;
	map2.addControl(new BMap.NavigationControl());
	map2.addControl(new BMap.ScaleControl());
	map2.addControl(new BMap.OverviewMapControl());
	map2.enableScrollWheelZoom();
	var point_aim2 = new Array;



	function City(){
		this.num = 1; // 城市编号（A城为1）
		this.gCost = 0; //从初识到此节点的实际代价
		this.fCost = 0; //从初始节点经过此节点到目的节点的估计值，fCost = gCost + hCost
		this.father = null; //保留父状态的搜索信息，以保证能返回完整搜索信息
		this.deep = 0;//已搜索深度，在预估hCost时会用到：hCost定位min*剩余深度(因为是树型搜索)
	}


	function aStar() {
		this.pathCost = new Array;// 矩阵形式各个城市之间的路程(权值)
		for(var i=0;i<flag;i++)
			this.pathCost[i]=new Array;
		this.n = 0;// 城市个数
		this.pathCityNum = new Array;// 记录放入路径的城市编号
		this.openList = new Array;// 储存City节点的open表
	}
	aStar.prototype.inputArray=function(cityNum)
	{//初始化
		this.n = cityNum;
		for(var i=0;i<this.n;i++)
			for(var j=0;j<this.n;j++)
			{
				if(i==j)
					this.pathCost[i][j]=0;
				else
				{
					this.pathCost[i][j]= Math.round(map2.getDistance(point_aim2[i],point_aim2[j])*1000)/1000;
					this.pathCost[j][i]= Math.round(this.pathCost[i][j]*1000)/1000;

				}

			}
	};

	aStar.prototype.initOpenList=function()
	{// 初始化openList，算法执行开始
		this.inputArray(flag);//初始化待解矩阵
		for(var i=0;i<this.n;i++)
	     this.openList[i] =new City();//初始化open表
	//    alert(this.openList);
		//      this.pathCityNum.length=this.n;//初始化路径城市个数
		for (var i=0;i<this.n+1;i++)
			this.pathCityNum[i] = i + 1;

		var oneCity = new City();//创建首节点

		this.pathCityNum[0] = 0;

		this.findBestways(oneCity);//开始启发式搜索
	};

	aStar.prototype.findBestways=function(firstCity)
	{// 寻找最佳路径
		var lastCity=this.extendCity(firstCity);//扩展
		this.printCityway(lastCity);//打印结果
		this.drawL();
	};

	aStar.prototype.extendCity=function(firstCity)
	{// 对城市节点进行扩展
		var thisCity = firstCity;
		var nextCity = null;//临时节点

		while (true) {
			var  num = 0;
			for (var i=0;i<=this.n;i++)
			{
				if (this.pathCityNum[i] == 0)
					num++;
			}

			if (num>this.n)
				break;
			if (num<this.n) {

				var hCost=this.gethCost(thisCity.num-1,thisCity.deep+1);//得到hCost

				for (var i=0;i<this.n;i++)
				{

					if (i == thisCity.num-1)
						continue;
					if (this.pathCityNum[i]==0)
						continue;
					nextCity = new City();
					nextCity.deep = thisCity.deep + 1;//向下搜索一层，深度 + 1
					nextCity.num = i+1;
					nextCity.gCost = thisCity.gCost + this.pathCost[thisCity.num - 1][i];//到下一个节点后的总代价 = 已有代价 + 两节点之间距离
					nextCity.fCost = hCost + nextCity.gCost;//f = g + t
					nextCity.father = thisCity; //保留父节点信息
					this.openList.push(nextCity); //加入到open表

				}
			}
			if (num==this.n) {//搜素到最后的节点处理
				    //alert("hello!n");
				nextCity = new City();
				nextCity.deep = thisCity.deep + 1;
				nextCity.num = this.pathCityNum[num];
				nextCity.gCost = thisCity.gCost + this.pathCost[thisCity.num - 1][0];
				nextCity.fCost = nextCity.gCost;
				nextCity.father = thisCity;
				this.openList.push(nextCity); //加入到open表
			}
			var openSize = this.openList.length;
			var minf = 0;
			var f = 0;
			var minTmpCity=this.openList[0];//从open表中取出第一个节点
			f = minTmpCity.fCost;
			for (var i=1;i<openSize;i++)
			{
				minTmpCity = this.openList[i];
				if (f > minTmpCity.fCost) {
					f = minTmpCity.fCost;
					minf = i;//找最小的序号
				}
			}
			//从open表选择最小的，也就是生成所谓的closed表的过程

			var tmpCity = thisCity;
			while (tmpCity != null) {
				this.pathCityNum[tmpCity.num - 1] = tmpCity.num;
				tmpCity = tmpCity.father;
			}
			thisCity =this.openList[minf];
			this.openList.splice(minf,1);

			tmpCity = thisCity;

			while (tmpCity != null) {
				this.pathCityNum[tmpCity.num-1] = 0;
				tmpCity = tmpCity.father;

			}
		}

		return thisCity;
	};


	aStar.prototype.gethCost=function(i,deep)
	{// 用于得到hCost，从此节点出发到目的节点最佳路径的预估代价
		var min = this.pathCost[i][0];

		for (var j = 0;j <this.n;j++)
		{//搜索pathCost矩阵，找最小: min
			if (this.pathCost[i][j] == 0)
				continue;
			if (this.pathCityNum[j] == 0)
				continue;
			else if (min>this.pathCost[i][j])
				min = this.pathCost[i][j];
		}

		return  min*(this.n - deep);//预估hCost值返回
	};

	aStar.prototype.printCityway=function(city)
	{//搜素结果打印

		var cost =new Array;
		//清空Open表
		this.openList.splice(0,this.openList.length);

		city = city.father;

		while (city != null) {//从该节点回溯到父节点，加入到Open表中
			this.openList.push(city);
			city = city.father;
		}

		try {
			document.getElementById("txta1").value ="优化后路径：\n";
			for (var i=this.openList.length-1;i>=0;i--)
			{//最佳路径输出
				city =this.openList[i];
				document.getElementById("txta1").value+=city.num+" ";//编号转化会城市名
				cost[this.n-1-i]=city.num;

			}
			document.getElementById("txta1").value+="1 \n";
			cost[this.n] = 1;
			//document.getElementById("txta1").value+="相邻两个城市间的距离为: \n";//最佳路径时两城市之间距离输出
			var sumf = 0;
			for (var i=0;i<this.n;i++)
			{
				//document.getElementById("txta1").value+=(cost[i])+"->"+(cost[i+1])+":"+this.pathCost[cost[i]-1][cost[i+1]-1]+"\n";
				sumf+= this.pathCost[cost[i]-1][cost[i+1]-1];
			}
			document.getElementById("txta1").value+="最短距离为 "+sumf;//最短距离输出
		} catch (e)
		{
			alert(e.name + ": " + e.message);
		}
	};
	aStar.prototype.drawL=function(){
		var tmpArray=new Array;
		for(var i=0;i<this.n;i++) {

			tmpArray[i]=point_aim2[this.openList[i].num-1];

		}

		var polyline = new BMap.Polyline(tmpArray,{strokeColor: "red", strokeWeight: 6, strokeOpacity: 0.8});
		map2.addOverlay(polyline);
	}
	function butt()
	{
		//var point_aim = new Array;

		for(var i = 0;i<myArray.length;i++) {
			var ar = arrays[i];
			var x = ar.coordinate_x;
			var y = ar.coordinate_y;
			//alert("x:" + x + "y:" + y);
			var pointa = new BMap.Point(x, y);
			var marker_aim = new BMap.Marker(pointa);
			map2.addOverlay(marker_aim);
			point_aim2[i] = pointa;
		}

		var asTer=new aStar();
			asTer.initOpenList();

	}



	function GetRandomNum(Min,Max)
	{
		var Range = Max - Min;
		var Rand = Math.random();
		return(Min + Math.round(Rand * Range));
	}
	function SA(){

		this.cityNum=0; // 城市数量，编码长度
		this.N=0;// 每个温度迭代步长
		this.T=0;// 降温次数
		this.a=0;// 降温系数
		this.t0=0;// 初始温度
		this.distance = new Array; // 距离矩阵

		this.bestT=0;// 最佳出现代数
		this.Ghh = new Array;// 初始路径编码
		this.GhhEvaluation=0;
		this.bestGh = new Array;// 最好的路径编码
		this.bestEvaluation=0;
		this.tempGhh = new Array;// 存放临时编码
		this.tempEvaluation=0;
		//var random;
	}

	/**
	 * constructor of GA
	 *
	 * @param cn
	 *            城市数量
	 * @param t
	 *            降温次数
	 * @param n
	 *            每个温度迭代步长
	 * @param tt
	 *            初始温度
	 * @param aa
	 *            降温系数
	 *
	 **/


	// 给编译器一条指令，告诉它对被批注的代码元素内部的某些警告保持静默
	//@SuppressWarnings("resource")
	/**
	 * 初始化Tabu算法类
	 * @param filename 数据文件名，该文件存储所有城市节点坐标数据
	 * @throws IOException
	 */
	SA.prototype.init=function(cn,n,t,tt,aa){

		this.cityNum = cn;
		this.N = n;
		this.T = t;
		this.t0 = tt;
		this.a = aa;
		// distance
		for(var i=0;i<this.cityNum;i++)
			this.distance[i]=new Array;

		for(var k=0;k<this.cityNum;k++)
			for(var j=0;j<this.cityNum;j++)
			{

				if (k == j)
					this.distance[k][j] = 0;
				else
				{
					this.distance[k][j] = Math.round(map2.getDistance(point_aim2[k], point_aim2[j])*1000)/1000;
					this.distance[j][k] = this.distance[k][j];
				}

			}

		this.bestEvaluation=Infinity;
		//tempGhh = new int[cityNum];
		this.tempEvaluation=Infinity;
		this.bestT = 0;
		//random = new Random(System.currentTimeMillis());

		//System.out.println(cityNum+","+N+","+T+","+a+","+t0);
		//   alert(this.cityNum+","+this.N+","+this.T+","+this.a+","+this.t0);
	};

	// 初始化编码Ghh
	SA.prototype.initGroup=function() {
		var i, j;
		this.Ghh[0]=GetRandomNum(0,this.cityNum-1);
		for (i = 1; i < this.cityNum;)// 编码长度
		{
			this.Ghh[i]=GetRandomNum(0,this.cityNum-1);
			for (j = 0; j < i; j++) {
				if (this.Ghh[i] == this.Ghh[j]) {
					break;
				}
			}
			if (j == i) {
				i++;
			}
		}
		//alert("this.Ghh:"+this.Ghh);
	};

	// 复制编码体，复制编码Gha到Ghb
	SA.prototype.copyGh=function(Gha,Ghb) {
		for (var i = 0; i < this.cityNum; i++) {
			Ghb[i] = Gha[i];
		}
	};

	SA.prototype.evaluate=function(chr) {
		// 0123
		//alert("evalue in");
		//alert("chr:"+chr);
		var len = 0;
		// 编码，起始城市,城市1,城市2...城市n
		//alert("this.cityNum:"+this.cityNum);
		//alert("this.distance:"+this.distance);
		for (var i = 1; i<this.cityNum; i++) {
			len += this.distance[chr[i-1]][chr[i]];
			//alert("len:"+len);
		}
		// 城市n,起始城市
		len += this.distance[chr[this.cityNum-1]][chr[0]];
		// alert(len);
		return len;
	};

	// 邻域交换，得到邻居
	SA.prototype.Linju=function(Gh,tempGh) {
		var i, temp;
		var ran1, ran2;

		for (i = 0; i < this.cityNum; i++) {
			tempGh[i] = Gh[i];
		}
		ran1 = GetRandomNum(0,this.cityNum-1);
		ran2 = GetRandomNum(0,this.cityNum-1);
		while (ran1 == ran2) {
			ran2 = GetRandomNum(0,this.cityNum-1);
		}
		// alert("ran1:"+ran1+" ran2:"+ran2);
		temp = tempGh[ran1];
		tempGh[ran1] = tempGh[ran2];
		tempGh[ran2] = temp;
	};

	SA.prototype.solve=function() {
		// 初始化编码Ghh
		this.initGroup();
		//alert("initGro su");
		this.copyGh(this.Ghh, this.bestGh);// 复制当前编码Ghh到最好编码bestGh
		this.bestEvaluation = this.evaluate(this.Ghh);
		//    alert("evalua su");
		this.GhhEvaluation = this.bestEvaluation;
		var k = 0;// 降温次数
		var n = 0;// 迭代步数
		var t = this.t0;
		var r = 0.0;

		while (k < this.T) {
			n = 0;
			while (n < this.N) {
				this.Linju(this.Ghh, this.tempGhh);// 得到当前编码Ghh的邻域编码tempGhh
				//alert("this.tempGhh: "+this.tempGhh);
				this.tempEvaluation = this.evaluate(this.tempGhh);
				if (this.tempEvaluation < this.bestEvaluation)
				{
					this.copyGh(this.tempGhh, this.bestGh);
					this.bestT = k;
					this.bestEvaluation = this.tempEvaluation;
				}
				r = Math.random();
				if (this.tempEvaluation > this.GhhEvaluation
						|| Math.exp((this.GhhEvaluation-this.tempEvaluation)/t)>r) {
					//alert("this.tempGhh: "+this.tempGhh);
					this.copyGh(this.tempGhh,this.Ghh);
					this.GhhEvaluation = this.tempEvaluation;
				}
				n++;
			}
			t = this.a * t;
			k++;
		}
		document.getElementById("txta2").value +="最佳长度出现代数："+this.bestT+"\n"+"最佳长度:"+this.bestEvaluation+"\n"+"最佳路径："+"\n";
		for (var i = 0; i <this.cityNum; i++) {
			document.getElementById("txta2").value +=this.bestGh[i]+1+" ";
			if (i % 10 == 0 && i != 0) {
				document.getElementById("txta2").value +="\n";
			}
		}
	};
	SA.prototype.drawl=function(){
		var tmpArray=new Array;
		for(var i=0;i<this.cityNum;i++) {
			//   alert(this.openList[i].num);
			tmpArray[i]=point_aim2[this.bestGh[i]];

		}

		var polyline = new BMap.Polyline(tmpArray,{strokeColor: "green", strokeWeight: 8, strokeOpacity: 0.6});
		map2.addOverlay(polyline);

	}

	function sa(){
		for(var i = 0;i<myArray.length;i++) {
			var ar = arrays[i];
			var x = ar.coordinate_x;
			var y = ar.coordinate_y;
			//alert("x:" + x + "y:" + y);
			var pointa = new BMap.Point(x, y);
			var marker_aim = new BMap.Marker(pointa);
			map2.addOverlay(marker_aim);
			point_aim2[i] = pointa;
		}
		document.getElementById("txta2").value="";
		var saa2 = new SA();
		// sa.init("F://创新项目//data.txt");
		saa2.init(flag,10,50,250.0,0.98);
		saa2.solve();
		saa2.drawl();

	}

	function exportToWord(controlId) {

		var s=document.getElementById(controlId+"0").innerHTML;
		s=s+"\n"+document.getElementById(controlId+"1").innerHTML+"\n"+document.getElementById(controlId+"2").innerHTML;
		//alert(s);
		var control=document.getElementById(controlId+"1");
		control.innerHTML=s;
		//var control1=document.getElementById(controlId+"1");
		//var control=document.getElementById(controlId+"0");
		///for(var i=1;i<3;i++)
		// control.appendChild(document.getElementById(controlId+"i"));
		//alert(control);

		try {
			var oWD = new ActiveXObject("Word.Application");
			var oDC = oWD.Documents.Add("", 0, 1);
			var oRange = oDC.Range(0, 1);
			var sel = document.body.createTextRange();
			try {
				sel.moveToElementText(control);

			} catch (notE) {
				alert("导出数据失败，没有数据可以导出。");
				window.close();
				return;
			}
			sel.select();

			sel.execCommand("Copy");

			oRange.Paste();
			oWD.Application.Visible = true;
			//window.close();
		}
		catch (e) {
			alert("导出数据失败，需要在客户机器安装Microsoft Office Word(不限版本)，将当前站点加入信任站点，允许在IE中运行ActiveX控件。");
			try { oWD.Quit(); } catch (ex) { }
			//window.close();
		}
	}

	/*function exportToWord(prefixion,Count)
	{
			var oWD = new ActiveXObject("Word.Application");
			var oDC = oWD.Documents.Add("",0,1);
			oDC.ShowGrammaticalErrors = false; //屏蔽语法检查
			oDC.ShowSpellingErrors = false; //屏蔽拼写检查
			var oRange =oDC.Range(0,1);
		    var sel = document.body.createTextRange();
		    var TableName = prefixion+"0";
		    var Table =document.getElementById(TableName)+"\n";
			for (i=1;i<Count;i++)
			{
				//var sel = document.body.createTextRange();
				//var TableName = prefixion+"i";
				var Table =Table+document.getElementById(TableName)+"\n";
				//sel.moveToElementText(Table);
				//sel.select();
				//sel.execCommand("Copy");
				//oWD.Selection.Paste();
				//oWD.Selection.InsertBreak(); //插入分页符
			}
		sel.moveToElementText(Table);
		sel.select();
		sel.execCommand("Copy");
		oWD.Selection.Paste();
//oWD.ActiveDocument.ActiveWindow.View.Type=3 //设置浏览模式
			oWD.Visible = true;
	}*/

	function exportion()
	{
		exportToWord('txta');
	}
	/*function exportion()
	{
		//exportToWord('thicontainer');

		var oWD = new ActiveXObject("Word.Application");
		var oDC = oWD.Documents.Add("", 0, 1);
		var oRange = oDC.Range(0, 1);
		try{
			try {
				var control1 = document.getElementById('thicontainer');
				var sel = document.body.createTextRange();
				sel.moveToElementText(control1);
				oWD.Selection.InsertBreak(); //插入分页符

				var control2 = document.getElementById(txta);
				var sel = document.body.createTextRange();
				sel.moveToElementText(control2);
				oWD.Selection.InsertBreak(); //插入分页符

				var control3 = document.getElementById(txta1);
				var sel = document.body.createTextRange();
				sel.moveToElementText(control3);
				oWD.Selection.InsertBreak(); //插入分页符
			} catch (notE) {
				alert("导出数据失败，没有数据可以导出。");
				window.close();
				return;
			}
			sel.select();
			sel.execCommand("Copy");
			oRange.Paste();
			oWD.Application.Visible = true;
			//window.close();
		}
		catch (e) {
			alert("导出数据失败，需要在客户机器安装Microsoft Office Word(不限版本)，将当前站点加入信任站点，允许在IE中运行ActiveX控件。");
			try { oWD.Quit(); } catch (ex) { }
			//window.close();
		}

	}*/

</script>
</body>
</html>
