<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<jsp:useBean id="user" type="dao.UserDao" scope="request"/>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>


<html>
<head>
	<title>DARK SOULS III</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="css/main.css"/>
</head>

<head><title>用户界面</title>
</head>

<body class="mediawiki ltr ns-0 ns-subject page-Slave_Knight_Gael  MiniEditor oasis-breakpoints skin-oasis oasis-dark-theme  user-anon background-fixed wiki-darksouls">

<div class="background-image-gradient"></div>

<div class="WikiaSiteWrapper">
	<header class="wds-community-header">
		<div class="wds-community-header__wordmark" data-tracking="wordmark-image">
			<img src="images/logo.png" width="243" height="50">
		</div>
	</header>
	<section id="WikiaPage" class="WikiaPage V2" onclick="">
		<div class="WikiaPageContentWrapper">
			<header id="PageHeader" class="page-header">
				<div class="page-header__main">
					<h1 class="page-header__title">Welcome, ${user.id}.</h1>
				</div>
				<div class="page-header__info">
					<a href="${pageContext.request.contextPath}/exam"><h1 class="page-header__title">Click</h1></a>
				</div>
			</header>
			<hr class="page-header__separator">
		</div>

		<div class="portable-infobox pi-background pi-theme-DS3 pi-layout-default">
			<h2 class="pi-item pi-item-spacing pi-title" >灰烬审判者-古达</h2>

			<figure class="pi-item pi-image" data-source="image">
				<img src="images/1.jpg">
			</figure>

			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="location">
				<h3 class="pi-data-label pi-secondary-font">Location</h3>
				<div class="pi-data-value pi-font"><a href="#">灰烬墓地</a></div>
			</div>
			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="drops">
				<h3 class="pi-data-label pi-secondary-font">Drops</h3>
				<div class="pi-data-value pi-font"><a href="#">Blood of the Dark Soul</a></div>
			</div>
		</div>

		<div class="portable-infobox pi-background pi-theme-DS3 pi-layout-default">
			<h2 class="pi-item pi-item-spacing pi-title" >冷冽谷的波尔多</h2>

			<figure class="pi-item pi-image" data-source="image">
				<img src="images/2.jpg">
			</figure>

			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="location">
				<h3 class="pi-data-label pi-secondary-font">Location</h3>
				<div class="pi-data-value pi-font"><a href="#">洛斯里克的高墙</a></div>
			</div>
			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="drops">
				<h3 class="pi-data-label pi-secondary-font">Drops</h3>
				<div class="pi-data-value pi-font"><a href="#">Blood of the Dark Soul</a></div>
			</div>
		</div>

		<div class="portable-infobox pi-background pi-theme-DS3 pi-layout-default">
			<h2 class="pi-item pi-item-spacing pi-title" >咒蚀大树</h2>

			<figure class="pi-item pi-image" data-source="image">
				<img src="images/3.jpg">
			</figure>

			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="location">
				<h3 class="pi-data-label pi-secondary-font">Location</h3>
				<div class="pi-data-value pi-font"><a href="#">不死聚落</a></div>
			</div>
			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="drops">
				<h3 class="pi-data-label pi-secondary-font">Drops</h3>
				<div class="pi-data-value pi-font"><a href="#">Blood of the Dark Soul</a></div>
			</div>
		</div>

		<div class="portable-infobox pi-background pi-theme-DS3 pi-layout-default">
			<h2 class="pi-item pi-item-spacing pi-title" >结晶老者</h2>

			<figure class="pi-item pi-image" data-source="image">
				<img src="images/4.jpg">
			</figure>

			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="location">
				<h3 class="pi-data-label pi-secondary-font">Location</h3>
				<div class="pi-data-value pi-font"><a href="#">活祭品之路</a></div>
			</div>
			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="drops">
				<h3 class="pi-data-label pi-secondary-font">Drops</h3>
				<div class="pi-data-value pi-font"><a href="#">Blood of the Dark Soul</a></div>
			</div>
		</div>

		<div class="portable-infobox pi-background pi-theme-DS3 pi-layout-default">
			<h2 class="pi-item pi-item-spacing pi-title" >幽邃主教群	</h2>

			<figure class="pi-item pi-image" data-source="image">
				<img src="images/5.jpg">
			</figure>

			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="location">
				<h3 class="pi-data-label pi-secondary-font">Location</h3>
				<div class="pi-data-value pi-font"><a href="#">幽邃教堂</a></div>
			</div>
			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="drops">
				<h3 class="pi-data-label pi-secondary-font">Drops</h3>
				<div class="pi-data-value pi-font"><a href="#">Blood of the Dark Soul</a></div>
			</div>
		</div>

		<div class="portable-infobox pi-background pi-theme-DS3 pi-layout-default">
			<h2 class="pi-item pi-item-spacing pi-title" >深渊监视者</h2>

			<figure class="pi-item pi-image" data-source="image">
				<img src="images/6.jpg">
			</figure>

			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="location">
				<h3 class="pi-data-label pi-secondary-font">Location</h3>
				<div class="pi-data-value pi-font"><a href="#">法兰要塞</a></div>
			</div>
			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="drops">
				<h3 class="pi-data-label pi-secondary-font">Drops</h3>
				<div class="pi-data-value pi-font"><a href="#">Blood of the Dark Soul</a></div>
			</div>
		</div>

		<div class="portable-infobox pi-background pi-theme-DS3 pi-layout-default">
			<h2 class="pi-item pi-item-spacing pi-title" >霸王沃尼尔</h2>

			<figure class="pi-item pi-image" data-source="image">
				<img src="images/7.jpg">
			</figure>

			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="location">
				<h3 class="pi-data-label pi-secondary-font">Location</h3>
				<div class="pi-data-value pi-font"><a href="#">卡萨斯的地下墓地</a></div>
			</div>
			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="drops">
				<h3 class="pi-data-label pi-secondary-font">Drops</h3>
				<div class="pi-data-value pi-font"><a href="#">Blood of the Dark Soul</a></div>
			</div>
		</div>

		<div class="portable-infobox pi-background pi-theme-DS3 pi-layout-default">
			<h2 class="pi-item pi-item-spacing pi-title" >老恶魔王</h2>

			<figure class="pi-item pi-image" data-source="image">
				<img src="images/8.jpg">
			</figure>

			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="location">
				<h3 class="pi-data-label pi-secondary-font">Location</h3>
				<div class="pi-data-value pi-font"><a href="#">熏烟湖</a></div>
			</div>
			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="drops">
				<h3 class="pi-data-label pi-secondary-font">Drops</h3>
				<div class="pi-data-value pi-font"><a href="#">Blood of the Dark Soul</a></div>
			</div>
		</div>

		<div class="portable-infobox pi-background pi-theme-DS3 pi-layout-default">
			<h2 class="pi-item pi-item-spacing pi-title" >教宗沙力万</h2>

			<figure class="pi-item pi-image" data-source="image">
				<img src="images/9.jpg">
			</figure>

			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="location">
				<h3 class="pi-data-label pi-secondary-font">Location</h3>
				<div class="pi-data-value pi-font"><a href="#">冷冽谷的伊鲁席尔</a></div>
			</div>
			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="drops">
				<h3 class="pi-data-label pi-secondary-font">Drops</h3>
				<div class="pi-data-value pi-font"><a href="#">Blood of the Dark Soul</a></div>
			</div>
		</div>

		<div class="portable-infobox pi-background pi-theme-DS3 pi-layout-default">
			<h2 class="pi-item pi-item-spacing pi-title" >巨人尤姆</h2>

			<figure class="pi-item pi-image" data-source="image">
				<img src="images/10.jpg">
			</figure>

			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="location">
				<h3 class="pi-data-label pi-secondary-font">Location</h3>
				<div class="pi-data-value pi-font"><a href="#">罪业之都</a></div>
			</div>
			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="drops">
				<h3 class="pi-data-label pi-secondary-font">Drops</h3>
				<div class="pi-data-value pi-font"><a href="#">Blood of the Dark Soul</a></div>
			</div>
		</div>

		<div class="portable-infobox pi-background pi-theme-DS3 pi-layout-default">
			<h2 class="pi-item pi-item-spacing pi-title" >吞噬神祗的艾尔德利奇</h2>

			<figure class="pi-item pi-image" data-source="image">
				<img src="images/11.jpg">
			</figure>

			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="location">
				<h3 class="pi-data-label pi-secondary-font">Location</h3>
				<div class="pi-data-value pi-font"><a href="#">亚诺尔隆德</a></div>
			</div>
			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="drops">
				<h3 class="pi-data-label pi-secondary-font">Drops</h3>
				<div class="pi-data-value pi-font"><a href="#">Blood of the Dark Soul</a></div>
			</div>
		</div>

		<div class="portable-infobox pi-background pi-theme-DS3 pi-layout-default">
			<h2 class="pi-item pi-item-spacing pi-title" >冷冽谷的舞娘</h2>

			<figure class="pi-item pi-image" data-source="image">
				<img src="images/12.jpg">
			</figure>

			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="location">
				<h3 class="pi-data-label pi-secondary-font">Location</h3>
				<div class="pi-data-value pi-font"><a href="#">洛斯里克的高墙</a></div>
			</div>
			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="drops">
				<h3 class="pi-data-label pi-secondary-font">Drops</h3>
				<div class="pi-data-value pi-font"><a href="#">Blood of the Dark Soul</a></div>
			</div>
		</div>

		<div class="portable-infobox pi-background pi-theme-DS3 pi-layout-default">
			<h2 class="pi-item pi-item-spacing pi-title" >妖王欧斯罗艾斯</h2>

			<figure class="pi-item pi-image" data-source="image">
				<img src="images/13.jpg">
			</figure>

			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="location">
				<h3 class="pi-data-label pi-secondary-font">Location</h3>
				<div class="pi-data-value pi-font"><a href="#">妖王庭院</a></div>
			</div>
			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="drops">
				<h3 class="pi-data-label pi-secondary-font">Drops</h3>
				<div class="pi-data-value pi-font"><a href="#">Blood of the Dark Soul</a></div>
			</div>
		</div>

		<div class="portable-infobox pi-background pi-theme-DS3 pi-layout-default">
			<h2 class="pi-item pi-item-spacing pi-title" >猎龙铠甲</h2>

			<figure class="pi-item pi-image" data-source="image">
				<img src="images/14.jpg">
			</figure>

			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="location">
				<h3 class="pi-data-label pi-secondary-font">Location</h3>
				<div class="pi-data-value pi-font"><a href="#">洛斯里克城</a></div>
			</div>
			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="drops">
				<h3 class="pi-data-label pi-secondary-font">Drops</h3>
				<div class="pi-data-value pi-font"><a href="#">Blood of the Dark Soul</a></div>
			</div>
		</div>

		<div class="portable-infobox pi-background pi-theme-DS3 pi-layout-default">
			<h2 class="pi-item pi-item-spacing pi-title" >洛斯里克双王子</h2>

			<figure class="pi-item pi-image" data-source="image">
				<img src="images/15.jpg">
			</figure>

			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="location">
				<h3 class="pi-data-label pi-secondary-font">Location</h3>
				<div class="pi-data-value pi-font"><a href="#">大书库</a></div>
			</div>
			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="drops">
				<h3 class="pi-data-label pi-secondary-font">Drops</h3>
				<div class="pi-data-value pi-font"><a href="#">Blood of the Dark Soul</a></div>
			</div>
		</div>

		<div class="portable-infobox pi-background pi-theme-DS3 pi-layout-default">
			<h2 class="pi-item pi-item-spacing pi-title" >英雄古达</h2>

			<figure class="pi-item pi-image" data-source="image">
				<img src="images/16.jpg">
			</figure>

			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="location">
				<h3 class="pi-data-label pi-secondary-font">Location</h3>
				<div class="pi-data-value pi-font"><a href="#">无主墓地</a></div>
			</div>
			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="drops">
				<h3 class="pi-data-label pi-secondary-font">Drops</h3>
				<div class="pi-data-value pi-font"><a href="#">Blood of the Dark Soul</a></div>
			</div>
		</div>

		<div class="portable-infobox pi-background pi-theme-DS3 pi-layout-default">
			<h2 class="pi-item pi-item-spacing pi-title" >古老飞龙</h2>

			<figure class="pi-item pi-image" data-source="image">
				<img src="images/17.jpg">
			</figure>

			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="location">
				<h3 class="pi-data-label pi-secondary-font">Location</h3>
				<div class="pi-data-value pi-font"><a href="#">古龙顶端</a></div>
			</div>
			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="drops">
				<h3 class="pi-data-label pi-secondary-font">Drops</h3>
				<div class="pi-data-value pi-font"><a href="#">Blood of the Dark Soul</a></div>
			</div>
		</div>

		<div class="portable-infobox pi-background pi-theme-DS3 pi-layout-default">
			<h2 class="pi-item pi-item-spacing pi-title" >无名王者</h2>

			<figure class="pi-item pi-image" data-source="image">
				<img src="images/18.jpg">
			</figure>

			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="location">
				<h3 class="pi-data-label pi-secondary-font">Location</h3>
				<div class="pi-data-value pi-font"><a href="#">古龙顶端</a></div>
			</div>
			<div class="pi-item pi-data pi-item-spacing pi-border-color" data-source="drops">
				<h3 class="pi-data-label pi-secondary-font">Drops</h3>
				<div class="pi-data-value pi-font"><a href="#">Blood of the Dark Soul</a></div>
			</div>
		</div>


	</section>
</div>

</body>

</html>
