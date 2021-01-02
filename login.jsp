<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="com.jsu.Bean.User" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>网上音乐-登录</title>
    <script type="text/javascript">
        function validate() {
		var email = document.getElementById("email");
		var password = document.getElementById("password");
		if (email.value == "") {
			alert("邮箱不能为空！");
			email.focus();
			return false;
		}
		if (password.value == "") {
			alert("密码不能为空！");
			password.focus();
			return false;
		}
		return true;
	}
    </script>
<%--    <link rel="shortcut icon" href="images/bitbug_favicon.ico">--%>
    <link rel="stylesheet" href="css/login.css" type="text/css">
</head>
<body>
<jsp:include page="top.jsp"></jsp:include>
<div class="bg">
    <div class="content">
        <form action="UserLoginServlet" method="post" onsubmit="return validate();">
            <div class="login_l">
                <p class="font14" style="color: gray">使用注册邮箱登录</p>
                <div class="span1">
                    <label class="tn-form-label">邮箱：</label>
                    <input class="tn-textbox" type="text" name="email" id="email">
                </div>
                <div class="span1">
                    <label class="tn-form-label">密码：</label>
                    <input class="tn-textbox" type="password" name="password" id="password">
                </div>
                <a href="register.jsp">立即注册</a>
                <div class="tn-form-row-button">
                    <div class="span1">
                        <input name="submit" type="submit" class="tn-button-text" value="登   录">
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>
