<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>慈溪市荣江电子厂</title>
    <meta content="慈溪市荣江电子厂" name="keywords"/>
    <meta content="慈溪市荣江电子厂" name="description"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/base.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/global.css"/>
    <!-------可重复的无缝滚动-------->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/marquee-two.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/marquee-two.js"></script>
    <!-------可重复的无缝滚动 end-------->
</head>

<body>
<div class="head">
    <div class="wrap"><a href="" class="sc wryh fr">加入收藏</a>
        <h1><a href=""><img alt="慈溪市荣江电子厂" src="image/logo.png" width="385" height="89"/></a></h1>
    </div>
</div>
<div class="nav">
    <div class="wrap nav">
        <ul class="f14 fb">
            <li><a href="${pageContext.request.contextPath}/index">网站首页</a></li>
            <li><a href="${pageContext.request.contextPath}/about">关于荣江</a></li>
            <li><a href="${pageContext.request.contextPath}/pro">产品中心</a></li>
            <li><a href="${pageContext.request.contextPath}/news">新闻动态</a></li>
            <li><a href="${pageContext.request.contextPath}/contact">联系我们</a></li>
        </ul>
    </div>
</div>
<div class="banner"></div>
<div class="h10"></div>
<div class="wrap">
    <div class="w235 fl">
        <div class="w233 border bg-blue" style="height:90px; overflow:hidden;">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td colspan="3" height="35" class="pl10"><span class="fb f14 blue">产品搜索</span></td>
                </tr>
                <tr>
                    <td width="55" height="45" align="right">关键字：</td>
                    <td width="127"><input type="text" id="name" class="txt c9" value="请输入产品名或型号"
                                           onclick="if(value==defaultValue){value=''}"
                                           onBlur="if(!value){value=defaultValue;}"/></td>
                    <td><input type="button" class="btn fb"
                               onclick="window.location.href = '/product/search/'+document.getElementById('name').value"
                               value="搜索"/></td>
                </tr>

            </table>
        </div>
        <div class="h10"></div>
        <div class="w235">
            <h1 class="pro-name f16 wryh fn">产品分类</h1>
            <div class="border-nt p10" style="height:410px; overflow:hidden;">
                <ul class="list">
                    <c:forEach items="${productTypeList}" var="productType">
                        <li>
                            <a href="${pageContext.request.contextPath}/pro/type/${productType.id}">${productType.name}</a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>
    <div class="w735 fr">
        <div class="w446 fl border p0-10">
            <h1 class="title1"><a href="" class="more"><img alt="更多" src="image/more.gif" width="31" height="5"/></a><em
                    class="title1-a">公司简介</em></h1>
            <div class="pt10" style="height:192px; overflow:hidden;"><img alt="公司简介" src="image/temp/01.jpg"
                                                                          class="border p2 fl mr10"/>
                <p>${about.des}</p>
            </div>
        </div>
        <div class="w235 border fr p0-10">
            <h1 class="title1"><a href="" class="more"><img alt="更多" src="image/more.gif" width="31" height="5"/></a><em
                    class="title1-b">新闻动态</em></h1>
            <div class="pt10" style="height:192px; overflow:hidden;">
                <ul class="news lh24">
                    <c:forEach items="${newsList}" var="news" end="30">
                        <li><a href="/new/${news.id}">${news.title}</a></li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="h10 cl"></div>
        <div class="w735"><img alt="广告位" src="image/temp/02.jpg" width="735" height="90"/></div>
        <div class="h10"></div>
        <div class="w713 border p0-10">
            <h1 class="title1"><a href="" class="more"><img alt="更多" src="image/more.gif" width="31" height="5"/></a><em
                    class="title1-c">新品展示</em></h1>
            <div class="pt10" style="height:155px; overflow:hidden;">
                <div id="marquee1" class="marqueeleft">
                    <div style="width:8000px;">
                        <ul id="marquee1_1" class="pro-list">
                            <c:forEach items="${productList}" var="product" end="10">
                                <li>
                                    <span class="pro-img">
                                        <a href="">
                                            <img alt="${product}" src="/upload/img/${product.img}" width="162"
                                                 height="118"/>
                                        </a>
                                    </span>
                                    <span class="pro-title">
                                        <a href="">${product.proName}</a>
                                    </span>
                                </li>
                            </c:forEach>
                        </ul>
                        <ul id="marquee1_2">
                        </ul>
                    </div>
                </div>
                <script type="text/javascript">marqueeStart(1, "left");</script>
                <!--marqueeleft end-->
            </div>
        </div>
    </div>
    <div class="cl"></div>
</div>
<div class="h10"></div>
<div class="link">
    <div class="wrap">
        <h1 class="link-titl e wryh fn">友情链接&nbsp;<span class="f12 c9">/&nbsp;LINKS</span></h1>
        <div class="p10">
            <ul class="link-word">
                <li><a href="">百度</a></li>
                <li><a href="">百度</a></li>
                <li><a href="">百度</a></li>
                <li><a href="">百度</a></li>
                <li><a href="">百度</a></li>
                <li><a href="">百度</a></li>
                <li><a href="">百度</a></li>
                <li><a href="">百度</a></li>
            </ul>
            <div class="cl"></div>
        </div>
    </div>
</div>
<div class="foot">
    <div class="wrap"> 热门产品：<a href="">连接器</a>&nbsp;<a href="">接插件</a>&nbsp; <a href="">接线端子</a>&nbsp; <a
            href="">接插件网</a>&nbsp; <a href="">中国接插件网</a>&nbsp; <a href="">接线端子兼容</a>&nbsp; <a href="">导线连接器</a><br/>
        Copyright@2013 慈溪市荣江电子厂 All Rights Reserved.<br/>
        地址：浙江省慈溪市张丁路10号 技术支持：恒凯科技<br/>
        <img alt="统计器" src="image/temp/08.jpg" width="48" height="12"/>
    </div>
</div>
</body>
</html>
