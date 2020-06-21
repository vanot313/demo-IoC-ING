<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<jsp:useBean id="message" type="dao.MessageDao" scope="request"/>

<html>

<head>
    <title>添加卡片</title>
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
                    <h1 class="page-header__title">>>>添加卡片</h1>
                </div>
                <div class="page-header__info">
                    <a href="${pageContext.request.contextPath}/browsecard"><h1 class="page-header__title">|卡片集市</h1></a>
                    <a href="${pageContext.request.contextPath}/"><h1 class="page-header__title">|主页</h1></a>
                </div>
            </header>
            <hr class="page-header__separator">
        </div>

        请输入卡片相关信息<br>
        <form action="addCard" method="post">
            <br>

            <p>ID:
                <input type="text" name="id"></p>

            <p>名字:
                <input type="text" name="name"></p>
            <p>品质:
                普通<input type="radio" name="standard" value="1" checked>
                稀有<input type="radio" name="standard" value="2">
                卓越<input type="radio" name="standard" value="3">
                史诗<input type="radio" name="standard" value="4">
                神话<input type="radio" name="standard" value="5">
                传说<input type="radio" name="standard" value="6">

            <p>代数:
                第零代<input type="radio" name="generation" value="0" checked>
                第一代<input type="radio" name="generation" value="1">
                第一代<input type="radio" name="generation" value="2">

            <p>属性-火:
                优异<input type="radio" name="1" value="1">
                普通<input type="radio" name="1" value="0" checked>

            <p>属性-雷:
                优异<input type="radio" name="2" value="1">
                普通<input type="radio" name="2" value="0" checked>

            <p>属性-暗:
                优异<input type="radio" name="3" value="1">
                普通<input type="radio" name="3" value="0" checked>

            <p>属性-冰:
                优异<input type="radio" name="4" value="1">
                普通<input type="radio" name="4" value="0" checked>

            <p>属性-混沌:
                优异<input type="radio" name="5" value="1">
                普通<input type="radio" name="5" value="0" checked>

            <p>属性-厚重:
                优异<input type="radio" name="6" value="1">
                普通<input type="radio" name="6" value="0" checked>

            <p>属性-锋利:
                优异<input type="radio" name="7" value="1">
                普通<input type="radio" name="7" value="0" checked>

            <p>属性-幸运:
                优异<input type="radio" name="8" value="1">
                普通<input type="radio" name="8" value="0" checked>

            <p>URL:
                <input type="text" name="url"></p>

            <br>
            <input type="submit" value="ok">
            <input type="reset" value="reset">
        </form>
        ${message.msg}

        <div id="WikiaPageBackground" class="WikiaPageBackground"></div>
    </section>


</div>
</body>
</html>
