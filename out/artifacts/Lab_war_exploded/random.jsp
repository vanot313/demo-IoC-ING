<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<jsp:useBean id="message" type="dao.MessageDao" scope="request"/>
<jsp:useBean id="card" type="dao.CardPropertiesDao" scope="request"/>

<html>

<head>
    <title>随机卡片</title>
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
                    <h1 class="page-header__title">>>>初代卡片生成</h1>
                </div>
                <div class="page-header__info">
                    <a href="${pageContext.request.contextPath}/"><h1 class="page-header__title">|主页</h1></a>
                </div>
            </header>
            <hr class="page-header__separator">
        </div>

        <form action="random" method="post">
            <br>
            <br>
            <%if(!message.getMsg().equals("生成卡片成功")){%>
            <p>请输入数字：
                <input type="text" name="number"></p>

                <input type="submit" value="ok">
                <input type="reset" value="reset">
            <%}%>
            ${message.msg}
        </form>


        <div class="portable-infobox pi-background pi-theme-DS3 pi-layout-default">
            <h2 class="pi-item pi-item-spacing pi-title" >属性</h2>
            <div class="pi-item pi-data pi-item-spacing pi-border-color" >
                <h3 class="pi-data-label pi-secondary-font">火</h3>
                <%if(card.getProperty1() == 1){%>
                <div class="pi-data-value pi-font"><a href="#">优异</a></div>
                <%}else{%>
                <div class="pi-data-value pi-font"><a href="#">普通</a></div>
                <%}%>
            </div>

            <div class="pi-item pi-data pi-item-spacing pi-border-color">
                <h3 class="pi-data-label pi-secondary-font">雷</h3>
                <%if(card.getProperty2() == 1){%>
                <div class="pi-data-value pi-font"><a href="#">优异</a></div>
                <%}else{%>
                <div class="pi-data-value pi-font"><a href="#">普通</a></div>
                <%}%>
            </div>

            <div class="pi-item pi-data pi-item-spacing pi-border-color" >
                <h3 class="pi-data-label pi-secondary-font">暗</h3>
                <%if(card.getProperty3() == 1){%>
                <div class="pi-data-value pi-font"><a href="#">优异</a></div>
                <%}else{%>
                <div class="pi-data-value pi-font"><a href="#">普通</a></div>
                <%}%>
            </div>

            <div class="pi-item pi-data pi-item-spacing pi-border-color" >
                <h3 class="pi-data-label pi-secondary-font">冰</h3>
                <%if(card.getProperty4() == 1){%>
                <div class="pi-data-value pi-font"><a href="#">优异</a></div>
                <%}else{%>
                <div class="pi-data-value pi-font"><a href="#">普通</a></div>
                <%}%>
            </div>

            <div class="pi-item pi-data pi-item-spacing pi-border-color" >
                <h3 class="pi-data-label pi-secondary-font">混沌</h3>
                <%if(card.getProperty5() == 1){%>
                <div class="pi-data-value pi-font"><a href="#">优异</a></div>
                <%}else{%>
                <div class="pi-data-value pi-font"><a href="#">普通</a></div>
                <%}%>
            </div>

            <div class="pi-item pi-data pi-item-spacing pi-border-color" >
                <h3 class="pi-data-label pi-secondary-font">厚重</h3>
                <%if(card.getProperty6() == 1){%>
                <div class="pi-data-value pi-font"><a href="#">优异</a></div>
                <%}else{%>
                <div class="pi-data-value pi-font"><a href="#">普通</a></div>
                <%}%>
            </div>

            <div class="pi-item pi-data pi-item-spacing pi-border-color" >
                <h3 class="pi-data-label pi-secondary-font">锋利</h3>
                <%if(card.getProperty7() == 1){%>
                <div class="pi-data-value pi-font"><a href="#">优异</a></div>
                <%}else{%>
                <div class="pi-data-value pi-font"><a href="#">普通</a></div>
                <%}%>
            </div>

            <div class="pi-item pi-data pi-item-spacing pi-border-color" >
                <h3 class="pi-data-label pi-secondary-font">幸运</h3>
                <%if(card.getProperty8() == 1){%>
                <div class="pi-data-value pi-font"><a href="#">优异</a></div>
                <%}else{%>
                <div class="pi-data-value pi-font"><a href="#">普通</a></div>
                <%}%>
            </div>

            <%if(message.getMsg() == "生成卡片成功"){%>
            <div class="pi-item pi-data pi-item-spacing pi-border-color" >
                <h3 class="pi-data-label pi-secondary-font">品质</h3>
                <div class="pi-data-value pi-font"><a href="#">${card.standard[card.sum]}</a></div>
            </div>
            <%}%>
        </div>


        <div id="WikiaPageBackground" class="WikiaPageBackground"></div>

    </section>


</div>
</body>
</html>
