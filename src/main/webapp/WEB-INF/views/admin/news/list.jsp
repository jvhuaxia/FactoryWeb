<%--
  Created by IntelliJ IDEA.
  User: JvHuaxia
  Date: 2018/12/6
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>所有新闻</title>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport"/>
        <meta name="apple-mobile-web-app-capable" content="yes"/>
        <meta name="apple-mobile-web-app-status-bar-style" content="black"/>
        <meta name="apple-touch-fullscreen" content="yes"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
        <!-- Font Awesome -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css"/>
        <!-- Ionicons -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ionicons.min.css"/>
        <!-- Theme style -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/dist/css/AdminLTE.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/dist/css/skins/_all-skins.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/dataTables.bootstrap.min.css"/>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.2.3.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/layer/layer.js"></script>
    </head>
</head>
<body>
<section class="content-header">
    <h1>&nbsp;</h1>
    <ol class="breadcrumb">
        <li><a href="right.html"><i class="fa fa-dashboard"></i>Home</a></li>
        <li><a href="#">资讯管理</a></li>
        <li class="active">质询列表</li>
    </ol>
</section>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">资讯列表</h3>
                </div>
                <div class="box-body table-responsive no-padding">
                    <table>
                        <tr>
                            <td colspan="4">关键词:<input type="text"/><input type="button" value="搜索"/></td>
                        </tr>
                    </table>
                    <table id="grid" class="table table-striped table-bordered table-hover" cellspacing="0"
                           width="100%">
                        <thead>
                        <tr>
                            <th>编号</th>
                            <th>资讯标题</th>
                            <th>资讯信息</th>
                            <th>资讯点击次数</th>
                            <th>发布时间</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${newsList}" var="news" step="1">
                            <tr>
                                <td>${news.id}</td>
                                <td>${news.title}</td>
                                <td>${news.des}</td>
                                <td>${news.click}</td>
                                <td>${news.time}</td>
                                <td>
                                    <button
                                            onclick="window.location.href = '/admin/news/update?id=${news.id}'"
                                            id='editrow'
                                            class='btn btn-success btn-sm' type='button'>
                                        编辑
                                    </button>
                                    &nbsp
                                    <button id='delrow' class='btn btn-danger btn-sm' onclick="del(${news.id})"
                                            type='button'>
                                        删除
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                        <tr>
                            <td colspan="4" align="right">
                                <ul class="pager">
                                    <li>
                                        <a class="btn"
                                           href="${pageContext.request.contextPath}/admin/news/list?pageNum=1">首页</a>
                                    </li>
                                    <li>
                                        <a
                                                <c:if test="${pageInfo.hasPreviousPage}">
                                                    href="${pageContext.request.contextPath}/admin/news/list?pageNum=${pageInfo.pageNum-1}"
                                                    class="btn"
                                                </c:if>
                                                <c:if test="${not pageInfo.hasPreviousPage}">
                                                    class="btn disabled"
                                                </c:if>
                                        >
                                            上一页
                                        </a>
                                    </li>
                                    <li>
                                        <a

                                                <c:if test="${pageInfo.hasNextPage}">
                                                    href="${pageContext.request.contextPath}/admin/news/list?pageNum=${pageInfo.pageNum+1}"
                                                    class="btn"
                                                </c:if>
                                                <c:if test="${not pageInfo.hasNextPage}">
                                                    class="btn disabled"
                                                </c:if>
                                        >
                                            下一页
                                        </a>
                                    </li>
                                    <li>
                                        <a class="btn"
                                           href="${pageContext.request.contextPath}/admin/news/list?pageNum=${pageInfo.pages}">尾页</a>
                                    </li>
                                    <li><span>共${pageInfo.pageNum}/${pageInfo.pages}页</span></li>
                                    <li>
                                        <div class="form-inline form-group" role="form">
                                            <input id="pageNum" class="form-control" placeholder="请输入要跳转的页数">
                                        </div>
                                        <a class="btn" onclick="jumpPageNum()">跳转</a>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/plugins/fastclick/fastclick.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/dist/js/app.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/layer/laydate/laydate.js"></script>

<script>
    function jumpPageNum() {
        var pageNum = $("#pageNum").val();
        window.location.href = "${pageContext.request.contextPath}/admin/news/list?pageNum=" + pageNum;
    }

    function del(id) {
        $.ajax(
            {
                url: "/api/news/del",
                type: "post",
                data: {
                    "id": id
                },
                success: function (result) {
                    console.warn(result);
                    if (result.success) {
                        layer.msg(result.msg, {icon: 1, skin: 'layer-ext-moon'});
                        setTimeout(function () {
                            window.location.reload();
                        }, 500);
                    }
                }

            }
        );
    }
</script>
</body>
</html>
