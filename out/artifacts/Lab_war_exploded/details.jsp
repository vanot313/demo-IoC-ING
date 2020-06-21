<%@ page language="java"  pageEncoding="UTF-8" %>
<%@ page import="enums.*" %>
<%@ page import="java.util.*" %>

<jsp:useBean id="cards" type="java.util.HashMap" scope="request"/>
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

<head><title>详细信息</title>
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
                    <h1 class="page-header__title">>>>详细信息</h1>
                </div>
                <div class="page-header__info">
                    <a href="${pageContext.request.contextPath}/browsecard"><h1 class="page-header__title">|卡片集市</h1></a>
                    <a href="${pageContext.request.contextPath}/"><h1 class="page-header__title">|主页</h1></a>
                </div>
            </header>
            <hr class="page-header__separator">
        </div>

        <%
                    String id = request.getParameter("id");
                    String[] value = (String[]) cards.get(id);

                    String name = value[0];
                    String standard = StandardType.getType(Integer.parseInt(value[1]));
                    String generation = GenerationType.getType(Integer.parseInt(value[2]));
                    String url = value[11];

                    String p1 = enums.Properties.getType(1);
                    String p2 = enums.Properties.getType(2);
                    String p3 = enums.Properties.getType(3);
                    String p4 = enums.Properties.getType(4);
                    String p5 = enums.Properties.getType(5);
                    String p6 = enums.Properties.getType(6);
                    String p7 = enums.Properties.getType(7);
                    String p8 = enums.Properties.getType(8);

                    String p1t = PropertyType.getType(Integer.parseInt(value[3]));
                    String p2t = PropertyType.getType(Integer.parseInt(value[4]));
                    String p3t = PropertyType.getType(Integer.parseInt(value[5]));
                    String p4t = PropertyType.getType(Integer.parseInt(value[6]));
                    String p5t = PropertyType.getType(Integer.parseInt(value[7]));
                    String p6t = PropertyType.getType(Integer.parseInt(value[8]));
                    String p7t = PropertyType.getType(Integer.parseInt(value[9]));
                    String p8t = PropertyType.getType(Integer.parseInt(value[10]));
        %>

        <div class="portable-infobox pi-background pi-theme-DS3 pi-layout-default">
            <h2 class="pi-item pi-item-spacing pi-title" ><%=name%></h2>

            <figure class="pi-item pi-image" data-source="image">
                <img src="<%=url%>">
            </figure>

            <div class="pi-item pi-data pi-item-spacing pi-border-color" >
                <h3 class="pi-data-label pi-secondary-font">ID</h3>
                <div class="pi-data-value pi-font"><a href="#"><%=id%></a></div>
            </div>
            <div class="pi-item pi-data pi-item-spacing pi-border-color" >
                <h3 class="pi-data-label pi-secondary-font">品质</h3>
                <div class="pi-data-value pi-font"><a href="#"><%=standard%></a></div>
            </div>
            <div class="pi-item pi-data pi-item-spacing pi-border-color" >
                <h3 class="pi-data-label pi-secondary-font">世代</h3>
                <div class="pi-data-value pi-font"><a href="#"><%=generation%></a></div>
            </div>
        </div>

        <div class="portable-infobox pi-background pi-theme-DS3 pi-layout-default">

            <div class="pi-item pi-data pi-item-spacing pi-border-color" >
                <h3 class="pi-data-label pi-secondary-font"><%=p1%></h3>
                <div class="pi-data-value pi-font"><a href="#"><%=p1t%></a></div>
            </div>
            <div class="pi-item pi-data pi-item-spacing pi-border-color" >
                <h3 class="pi-data-label pi-secondary-font"><%=p2%></h3>
                <div class="pi-data-value pi-font"><a href="#"><%=p2t%></a></div>
            </div>
            <div class="pi-item pi-data pi-item-spacing pi-border-color" >
                <h3 class="pi-data-label pi-secondary-font"><%=p3%></h3>
                <div class="pi-data-value pi-font"><a href="#"><%=p3t%></a></div>
            </div>
            <div class="pi-item pi-data pi-item-spacing pi-border-color" >
                <h3 class="pi-data-label pi-secondary-font"><%=p4%></h3>
                <div class="pi-data-value pi-font"><a href="#"><%=p4t%></a></div>
            </div>
            <div class="pi-item pi-data pi-item-spacing pi-border-color" >
                <h3 class="pi-data-label pi-secondary-font"><%=p5%></h3>
                <div class="pi-data-value pi-font"><a href="#"><%=p5t%></a></div>
            </div>
            <div class="pi-item pi-data pi-item-spacing pi-border-color" >
                <h3 class="pi-data-label pi-secondary-font"><%=p6%></h3>
                <div class="pi-data-value pi-font"><a href="#"><%=p6t%></a></div>
            </div>
            <div class="pi-item pi-data pi-item-spacing pi-border-color" >
                <h3 class="pi-data-label pi-secondary-font"><%=p7%></h3>
                <div class="pi-data-value pi-font"><a href="#"><%=p7t%></a></div>
            </div>
            <div class="pi-item pi-data pi-item-spacing pi-border-color" >
                <h3 class="pi-data-label pi-secondary-font"><%=p8%></h3>
                <div class="pi-data-value pi-font"><a href="#"><%=p8t%></a></div>
            </div>

        </div>



        <div id="WikiaPageBackground" class="WikiaPageBackground"></div>

    </section>


</div>

</body>

</html>
