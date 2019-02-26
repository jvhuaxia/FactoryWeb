<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://jvhuaxia.com/functions" prefix="f" %>
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
        <li class="active">修改资讯</li>
    </ol>
</section>
<input type="hidden" id="id" value="${news.id}">
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">修改资讯</h3>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label for="title" class="col-sm-2 control-label">标题：</label>
                        <div class="col-sm-10">
                            <input type="text" id="title" name="title" class="form-control" value="${news.title}"
                                   placeholder="请输入标题"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="des" class="col-sm-2 control-label">内容：</label>
                        <div class="col-sm-10">
                            <textarea style="height: 500px;" type="text" id="des" name="des" class="form-control"
                                      placeholder="请输入内容">${news.des}</textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="click" class="col-sm-2 control-label">点击次数：</label>
                        <div class="col-sm-10">
                            <input type="text" id="click" name="des" class="form-control"
                                   value="${news.click}"
                                   placeholder="请输入点击次数">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="time" class="col-sm-2 control-label">时间：</label>
                        <div class="col-sm-10">
                            <input type="text"
                                   value="${f:formatLocalDateTime(news.time,"yyyy-MM-dd HH:mm:ss" )}"
                                   id="time">
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
    //时间选择器
    laydate.render({
        elem: '#time'
        , type: 'datetime'
    });
</script>

<script>

    function cancel() {
        window.location.href = "/admin/news/list";
    }

    function yanzheng() {
        var id = $("#id").val();
        var title = $("#title").val();
        var des = $("#des").val();
        var click = $("#click").val();
        var time = $("#time").val();

        $.ajax({
            type: "post",
            url: "/api/news/update",
            data: {
                "id": id,
                "title": title,
                "des": des,
                "click": click,
                "time": time
            },
            success: function (status) {
                if (status.success) {
                    layer.msg(status.msg, {icon: 1, skin: 'layer-ext-moon'});
                    setTimeout(function () {
                        window.location.href = "/admin/news/list";
                    }, 800)
                } else {
                    layer.msg(status.msg, {icon: 2, skin: 'layer-ext-moon'});
                }
            }
        })
    }
</script>
</html>
