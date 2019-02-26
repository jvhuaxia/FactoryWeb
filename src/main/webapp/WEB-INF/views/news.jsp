<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
            <ul class="f14 fb">
                <li><a href="${pageContext.request.contextPath}/index">网站首页</a></li>
                <li><a href="${pageContext.request.contextPath}/about">关于荣江</a></li>
                <li><a href="${pageContext.request.contextPath}/pro">产品中心</a></li>
                <li><a href="${pageContext.request.contextPath}/news">新闻动态</a></li>
                <li><a href="${pageContext.request.contextPath}/contact">联系我们</a></li>
            </ul>
        </ul>
    </div>
</div>
<div class="banner"></div>
<div class="h10"></div>
<div class="wrap">
    <div class="w235 fl">

        <div class="w235 fl">

            <div class="w233 border bg-blue"
                 style="height: 90px; overflow: hidden;">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tbody>
                    <tr>
                        <td colspan="3" height="35" class="pl10"><span
                                class="fb f14 blue">产品搜索</span></td>
                    </tr>
                    <tr>
                        <td width="55" height="45" align="right">关键字：</td>
                        <td width="127"><input id="name" type="text"
                                               class="txt c9" value="请输入产品名或型号"
                                               onblur="if(!value){value=defaultValue;}"></td>
                        <td><input type="submit" class="btn fb"
                                   onclick="window.location.href = '/product/search/'+document.getElementById('name').value"
                                   value="搜索"></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="h10"></div>

            <div class="h10"></div>

            <div class="w235">
                <h1 class="pro-name f16 wryh fn">产品分类</h1>
                <div class="border-nt p10">
                    <ul class="list">
                        <c:forEach var="productType" items="${productTypeList}">
                            <li>
                                <a href="${pageContext.request.contextPath}/pro/type/${productType.id}">${productType.name}</a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>


            <div class="h10"></div>

            <div class="h10"></div>
        </div>

    </div>
    <div class="w735 fr">
        <div class="w713 border p0-10"
             style="min-height: 556px; _height: 556px;">
            <h1 class="title1">
					<span class="fr mr10 fn">当前位置：<a
                            href="http://www.rjdz.com.cn/index.aspx">首页</a>&nbsp;&gt;&nbsp;新闻动态
					</span><em class="title1-d">新闻动态</em>
            </h1>
            <div class="pt10">
                <ul class="news lh24">
                    <c:forEach items="${newsList}" var="news">
                        <li><span class="fr c9">${news.time}</span><a
                                href="/new/${news.id}">
                                ${news.title}</a></li>
                    </c:forEach>
                </ul>
                <div class="cl"></div>
                <div class="megas512"></div>
                <!--放置页码列表-->
            </div>
        </div>
    </div>
    <div class="cl"></div>
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