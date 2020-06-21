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

<head><title>卡片集市</title>
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
                    <h1 class="page-header__title">>>>卡片集市</h1>
                </div>
                <div class="page-header__info">
                    <a href="${pageContext.request.contextPath}/addCard"><h1 class="page-header__title">|添加卡片</h1></a>
                    <a href="${pageContext.request.contextPath}/"><h1 class="page-header__title">|主页</h1></a>
                </div>
            </header>
            <hr class="page-header__separator">
        </div>

            <%
                Iterator iter = cards.keySet().iterator();
                if(cards!=null){
                    while(iter.hasNext()){
                        Object item = iter.next();
                        if(item == null){
                            continue;
                        }

                        String id = item.toString();
                        String[] value = (String[]) cards.get(id);
                        String name = value[0];
                        String standard = StandardType.getType(Integer.parseInt(value[1]));
                        String generation = GenerationType.getType(Integer.parseInt(value[2]));
                        String url = value[11];

            %>

                <div class="portable-infobox pi-background pi-theme-DS3 pi-layout-default">
                    <h2 class="pi-item pi-item-spacing pi-title" ><%=name%></h2>

                    <figure class="pi-item pi-image" data-source="image">
                        <a href="details?id=<%=id%>"><img src="<%=url%>"></a>
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

            <%
                    }
                }
            %>



        <div id="WikiaPageBackground" class="WikiaPageBackground"></div>

    </section>


</div>

</body>

</html>
