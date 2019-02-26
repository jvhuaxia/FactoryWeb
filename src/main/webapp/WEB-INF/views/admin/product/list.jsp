<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="f" uri="http://jvhuaxia.com/functions" %>
<html>
<head>
    <title>产品列表</title>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta charset="UTF-8">
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
        <li><a href="#">产品列表</a></li>
        <li class="active">产品列表</li>
    </ol>
</section>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">产品列表</h3>
                </div>
                <div class="box-body table-responsive no-padding">
                    <form action="${pageContext.request.contextPath}/admin/product/listByName" method="post">
                        <table>
                            <tr>
                                <td colspan="4">关键词:<input type="text" name="name" id="name"/>
                                    <input type="submit" value="搜索"/></td>
                            </tr>
                        </table>
                    </form>
                    <table id="grid" class="table table-striped table-bordered table-hover" cellspacing="0"
                           width="100%">
                        <thead>
                        <tr>
                            <th>编号</th>
                            <th>图片</th>
                            <th>产品名字</th>
                            <th>分类</th>
                            <th>内容</th>
                            <td>时间</td>
                            <td>点击次数</td>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${productList}" var="product" step="1">
                            <tr>
                                <td>${product.id}</td>
                                <td><img style="width: 100px;height: 100px" src="/upload/img/${product.img}"></td>
                                <td>${product.proName}</td>
                                <td>${product.productType.name}</td>
                                <td>${product.des}</td>
                                <td>${f:formatLocalDateTime(product.addDate, "yyyy-MM-dd HH:mm:ss")}</td>
                                <td>${product.his}</td>
                                <td>
                                    <button
                                            id='editrow'
                                            onclick="window.location.href = '/admin/product/update?id=${product.id}'"
                                            class='btn btn-success btn-sm' type='button'>
                                        编辑
                                    </button>
                                    &nbsp
                                    <button id='delrow' class='btn btn-danger btn-sm'
                                            onclick="del(${product.id})"
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
                                           href="${pageContext.request.contextPath}/admin/product/list?pageNum=1">首页</a>
                                    </li>
                                    <li>
                                        <a
                                                <c:if test="${pageInfo.hasPreviousPage}">
                                                    href="${pageContext.request.contextPath}/admin/product/list?pageNum=${pageInfo.pageNum-1}"
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
                                                    href="${pageContext.request.contextPath}/admin/product/list?pageNum=${pageInfo.pageNum+1}"
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
                                           href="${pageContext.request.contextPath}/admin/product/list?pageNum=${pageInfo.pages}">尾页</a>
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
        window.location.href = "${pageContext.request.contextPath}/admin/product/list?pageNum=" + pageNum;
    }

    function del(id) {
        $.ajax(
            {
                url: "/api/product/del",
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
