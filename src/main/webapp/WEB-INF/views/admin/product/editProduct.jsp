<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="f" uri="http://jvhuaxia.com/functions" %>
<html>
<head>
    <title>编辑产品</title>
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
        <li><a href="#">产品编辑</a></li>
        <li class="active">编辑产品</li>
    </ol>
</section>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">编辑产品</h3>
                </div>
                <div class="form-group">

                    <input id="id" type="hidden" name="id" value="${product.id}">
                    <input id="img" type="hidden" name="img" value="${product.img}">
                    <label for="typeId">选择类型</label>
                    <select class="form-control" id="typeId" name="typeId">
                        <c:forEach items="${productTypeList}" var="productType">
                            <option value="${productType.id}">${productType.name}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">名称：</label>
                        <div class="col-sm-10">
                            <input type="text" id="name" name="name" value="${product.proName}" class="form-control"
                                   placeholder="请输入产品名称"/>
                        </div>
                    </div>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label for="des" class="col-sm-2 control-label">请输入产品描述：</label>
                        <div class="col-sm-10">
                            <textarea type="text" id="des" name="des" class="form-control">${product.des}</textarea>
                        </div>
                    </div>
                </div>

                <div class="box-body">
                    <div class="form-group">
                        <label for="his" class="col-sm-2 control-label">请输入点击次数：</label>
                        <div class="col-sm-10">
                            <input type="text" id="his" name="his" class="form-control" value="${product.his}"/>
                        </div>
                    </div>
                </div>

                <div class="box-body">
                    <div class="form-group">
                        <label for="date" class="col-sm-2 control-label">请输入时间：</label>
                        <div class="col-sm-10">
                            <input type="text" id="date" name="date" class="form-control"
                                   value="${f:formatLocalDateTime(product.addDate,"yyyy-MM-dd HH:mm:ss")}"/>
                        </div>
                    </div>
                </div>


                <div class="box-footer">
                    <div class="col-sm-offset-2 col-sm-8">
                        <input type="button" id="btnok" value="保 存" class="btn btn-block btn-info btn-lg"
                               onclick="save()"/>
                    </div>
                    <div class="col-sm-2">&nbsp;</div>
                    <div class="col-sm-offset-2 col-sm-8">
                        <input type="button" id="btncancel" value="返 回" class="btn btn-block btn-info btn-lg"
                               onclick="cancel()"/>
                    </div>
                </div>
                </form>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/layer/laydate/laydate.js"></script>

<script>
    //时间选择器
    laydate.render({
        elem: '#date'
        , type: 'datetime'
    });
</script>

<script>

    function save() {

        var id = $("#id").val();
        var typeId = $("#typeId").val();
        var img = $("#img").val();
        var name = $("#name").val();
        var des = $("#des").val();
        var his = $("#his").val();
        var date = $("#date").val();

        $.ajax({
            type: "post",
            url: "/api/product/update",
            data: {
                "id": id,
                "img": img,
                "typeId": typeId,
                "name": name,
                "des": des,
                "his": his,
                "addDate": date,
            },
            success: function (result) {
                if (result.success) {
                    layer.msg(result.msg, {icon: 1, skin: 'layer-ext-moon'});
                    setTimeout(function () {
                        window.location.href = "/admin/product/list";
                    }, 800);
                } else {
                    layer.msg(result.msg, {icon: 2, skin: 'layer-ext-moon'});
                }
            }
        });

    }

    $("#typeId option[value=${product.productType.id}]").attr("selected", "selected");

    function cancel() {
        window.location.href = "${pageContext.request.contextPath}/admin/product/list";
    }
</script>
</html>
