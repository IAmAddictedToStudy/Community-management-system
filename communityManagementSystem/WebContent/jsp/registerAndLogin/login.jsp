<%--
  Created by IntelliJ IDEA.
  User: 62569
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>福建师范大学学生社团管理系统—VIP登录</title>
<style>
label.error {
	background: url(../../img/register/unchecked.gif) no-repeat 10px 3px;
	padding-left: 30px;
	font-family: georgia;
	font-size: 15px;
	font-style: normal;
	color: red;
}

label.success {
	background: url(../../img/register/checked.gif) no-repeat 10px 3px;
	padding-left: 30px;
}
</style>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/css/login.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<!--引入validate插件js文件-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<!--引入国际化js文件-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/messages_zh.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/register/additional-methods.js"></script>
<script>
	$(function() {
		$("#loginForm").validate({
			rules : {
				studentId : {
					validateMember:true,
					required : true,
					minlength : 12
				},
				password : {
					required : true,
					minlength : 6,
					maxlength : 20,
					validatePassword:true
					
				}
			},
			messages : {
				studentId : {
					required : "学号不能为空!",
					minlength : "学号为12位数字!"
				},
				password : {
					
					required : "密码不能为空!",
					minlength : "密码不得少于6位!",
					validatePassword:"字母数字以及下划线"
				}	
			},
			errorElement : "label", //用来创建错误提示信息标签,validate插件默认的就是label
			success : function(label) { //验证成功后的执行的回调函数
				//label指向上面那个错误提示信息标签label
				label.text(" ") //清空错误提示消息
				.addClass("success"); //加上自定义的success类
			}
		});
	});
</script>
</head>
<body class="login_bj">
	<div class="zhuce_body">

		<div class="zhuce_kong login_kuang">
			<div class="zc">
				<div class="bj_bai" >
					<h3>登录</h3>
					<form id="loginForm"
						action="${pageContext.request.contextPath}/loginServlet"
						method="post">
						<input name="studentId" id="studentId"  maxlength="12"
						required type="text"
							class="kuang_txt" placeholder="学号"> <input
							name="password" id="password" required type="password"
							class="kuang_txt" placeholder="请输入密码">
						<div>
							<a href="#">忘记密码？</a><input type="checkbox" id="rememberMe"
								checked><span>记住我</span>
						</div>
						<input name="登录" type="submit" class="btn_zhuce" value="登录">
						<a href="register.jsp">未注册？立即注册</a>


					</form>
				</div>

			</div>

		</div>

	</div>

	<script>
    (
        function init() {
            var ls = window.localStorage;

            $(function () {
               var username = ls.getItem("username");
               if(username != null){
                   var password = ls.getItem("password");

                   $("#studentId").val(username);
                   $("#password").val(password);
               }
            });
           

            $("#loginForm").on("submit",function () {
                if(document.getElementById("rememberMe").checked){//当他选择了记住我
                    ls.setItem("username",$("#studentId").val());
                    ls.setItem("password",$("#password").val());
                }
                else {
                		ls.removeItem("username");
                    	ls.removeItem("password",$("#password").val());
					}});
      	  	}
    )();
</script>

</body>
</html>
