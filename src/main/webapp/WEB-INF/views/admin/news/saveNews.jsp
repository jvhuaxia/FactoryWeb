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
    <title>添加资讯</title>
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
    <h1>&nbsp</h1>
    <ol class="breadcrumb">
        <li><a href="right.aspx"><i class="fa fa-dashboard"></i>Home</a></li>
        <li><a href="#">资讯管理</a></li>
        <li class="active">添加资讯</li>
    </ol>
</section>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">添加管理员</h3>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label for="title" class="col-sm-2 control-label">标题：</label>
                        <div class="col-sm-10">
                            <input type="text" id="title" name="title" class="form-control"
                                   placeholder="请输入标题"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="des" class="col-sm-2 control-label">内容：</label>
                        <div class="col-sm-10">
                            <textarea style="height: 500px;" type="text" id="des" name="des" class="form-control"
                                      placeholder="请输入内容"></textarea>
                        </div>
                    </div>
                </div>
                <div class="box-footer">
                    <div class="col-sm-offset-2 col-sm-8">
                        <input type="button" id="btnok" value="保 存" class="btn btn-block btn-info btn-lg"
                               onclick="yanzheng()"/>
                    </div>
                    <div class="col-sm-2">&nbsp;</div>
                    <div class="col-sm-offset-2 col-sm-8">
                        <input type="button" id="btncancel" value="返 回" class="btn btn-block btn-info btn-lg"
                               onclick="cancel()"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/plugins/fastclick/fastclick.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/dist/js/app.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/layer/laydate/laydate.js"></script>
<script>
    function yanzheng() {
        var title = $("#title").val();
        var des = $("#des").val();

        if (title.length <= 0) {
            $("#title").focus();
            layer.msg("请输入标题", {icon: 2, skin: 'layer-ext-moon'});
            return false;
        }
        if (des.length <= 0) {
            $("#des").focus();
            layer.msg("请输入内容", {icon: 2, skin: 'layer-ext-moon'});
            return false;
        }

        $.ajax({
            url: "/api/news/save",
            type: "post",
            data: {
                "title": title,
                "des": des
            },
            success: function (result) {
                if (result.success) {
                    layer.msg("插入成功", {icon: 1, skin: 'layer-ext-moon'});
                    setTimeout(function () {
                        window.location.href = "/admin/news/list";
                    }, 800);
                } else {
                    layer.msg("插入失败", {icon: 2, skin: 'layer-ext-moon'});
                    console.warn(result);
                }
            }
        });
    }

    function cancel() {
        window.location.href = "${pageContext.request.contextPath}/admin/news/list";
    }
</script>
</html>
