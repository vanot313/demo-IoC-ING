<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<jsp:useBean id="message" type="dao.MessageDao" scope="request"/>

<html>

<head>
	<title>测试</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="css/main.css"/>
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
					<h1 class="page-header__title">>>>答题</h1>
				</div>
				<div class="page-header__info">
					<a href="${pageContext.request.contextPath}/"><h1 class="page-header__title">|主页</h1></a>
				</div>
			</header>
			<hr class="page-header__separator">
		</div>

		回答下列问题<br>
		<form action="exam" method="post">
			<br>
			判断<br>
			<p>1.凉宫春日系列的作者是谷川流
				对<input type="radio" name="quest1" value="1">
				错<input type="radio" name="quest1" value="2"></p>

			<p>2.交响诗篇是扳机社的作品
				对<input type="radio" name="quest2" value="1">
				错<input type="radio" name="quest2" value="2"></p>

			多选<br>
			<p>1.下面哪些是光之美少女主角
				星空幸<input type="checkbox" name="quest3" value="1">
				高町奈叶<input type="checkbox" name="quest3" value="2">
				相田爱<input type="checkbox" name="quest3" value="3"></p>

			<p>2.下面哪些是ywwuyi
				义乌巫医<input type="checkbox" name="quest4" value="1">
				爽鸭<input type="checkbox" name="quest4" value="2">
				哈里发二世<input type="checkbox" name="quest4" value="3"></p>

			单选<br>
			<p>1.太阳骑士一般指下面的哪一位
				埃尔德里奇<input type="radio" name="quest5" value="1">
				索拉尔<input type="radio" name="quest5" value="2">
				沙利万<input type="radio" name="quest5" value="3"></p>

			<p>2.下面哪样武器是不可见的
				黑暗剑<input type="radio" name="quest6" value="1">
				风暴管束者<input type="radio" name="quest6" value="2">
				放逐者大刀<input type="radio" name="quest6" value="3"></p>

			简答<br>
			<p>1.只有风暴才能击倒大树，
				<input type="text" name="quest7"></p>

			<p>2.我喜欢尼娅，和
				<input type="text" name="quest8"></p>

			<input type="submit" value="ok">
			<input type="reset" value="reset">

		</form>
		${message.msg}

		<div id="WikiaPageBackground" class="WikiaPageBackground"></div>

	</section>


</div>
</body>
</html>
