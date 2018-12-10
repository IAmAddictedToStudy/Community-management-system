<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>福建师范大学学生社团管理系统—VIP注册</title>
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

<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/css/login.css">
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
		$("#registForm").validate({
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
					
				},
				passwordConfirm : {
					required : true,
					equalTo : "[name='password']"
				},
				mName:{
					required : true,
					validateName : true,
					minlength : 2,
					maxlength : 20,
	
				},
				mSex : {
					required : true
				},
				academy:{
					required : true,
					validateName : true,
					minlength : 2,
					maxlength : 20,
	
				},
				grade:{
					required : true
				},
				
				profession:{
					required : true,
					validateName : true,
					minlength : 2,
					maxlength : 20
				},
				classAndGrade:{
					required : true,
					validateClassAndGrade : true,
					minlength : 2,
					maxlength : 20
				},
				dorm:{
					required : true,
					validateDorm : true,
					minlength : 2,
					maxlength : 20
				},
				phone:{
					required : true,
					minlength : 11,
					validatePhone : true
					
				},
				QQ:{
					minlength : 5,
					validateQQ : true
				},
				email : {
					email : true,
					required :true
		
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
				},
				passwordConfirm : {
					required : "确认密码不能为空!",
					equalTo : "两次输入密码不一致!"
		
				},
				mName:{
					required : "姓名不能为空",
					minlength : "姓名大于两位"
					
					
				},
				mSex : {
					required : "性别必须勾选!"
				},
				academy:{
					required : "学院不能为空",
					validateName : "正确输入你的学院名称",
					minlength : "学院名称大于两位",
	
				},
				grade:{
					required : "年级必须勾选!"
				},
				
				profession:{
					required : "专业不能为空",
					validateName : "正确输入你的专业",
					minlength : "专业名字大于两位"
				},
				classAndGrade:{
					required : "班级不能为空",
					validateClassAndGrade : "正确输入你的班级",
					minlength : "班级名字大于两位"

				},
				dorm:{
					required : "宿舍不能为空",
					validateClassAndGrade : "正确输入你的宿舍",
					minlength : "宿舍名字大于两位"
				},
				phone:{
					required : "电话不能为空",
					minlength : "手机号长度为11位",
					validatePhone : "请正确填写你的手机号"
					
				},
				QQ:{
					minlength : "QQ位数为5-12位",
					validateQQ : "请正确输入你的QQ"
				},
				email : {
					email : "邮箱格式不正确!",
					required : "邮箱不能为空!"
					
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
<body class="login_bj ">

	<div class="zhuce_body" style="height: 1200px;">
		<div class="logo"></div>
		<div class="zhuce_kong" style="width: 600px; height: 600px;">
			<div class="zc" style="width: 599px; height: 590px;">
				<div class="bj_bai" style="width: 450px; height: 789px;">
					<h3>欢迎注册</h3>


					<form action="${pageContext.request.contextPath}/registerServlet"
						method="post" id="registForm">
						<input id="studentId" name="studentId" required type="text"
							 class="kuang_txt studentId"
							placeholder="学号" maxlength="12"
							oninput="this.value=this.value.replace(/\D/g,'')"> 
				

							<!-- 	onchange="passwordCheck()" -->
						<input
							name="password" id="password" maxlength="20" required
							type="password" class="kuang_txt password" placeholder="密码"
						> 
							
						<input name="passwordConfirm"
							maxlength="20" id="passwordConfirm" required type="password"
							class="kuang_txt" placeholder="再次输入密码"
							> 
							
						<input name="mName"
							required type="text" class="kuang_txt mName" maxlength="20" placeholder="姓名">


						<select required id="mSex" name="mSex" class="kuang_txt mSex"
							style="width: 273px; height: 33px">
							<option value="">性别(请选择)</option>
							<option value="男">男</option>
							<option value="女">女</option>
							
						</select> <br> 
						
						<input name="academy" required type="text"
							class="kuang_txt academy" placeholder="学院"> 
							
						<select
							required id="grade" name="grade" class="kuang_txt grade"
							style="width: 273px; height: 33px">
							<option value="">年级(请选择)</option>
							<option value="2010">2010</option>
							<option value="2011">2011</option>
							<option value="2012">2012</option>
							<option value="2013">2013</option>
							<option value="2014">2014</option>
							<option value="2015">2015</option>
							<option value="2016">2016</option>
							<option value="2017">2017</option>
							<option value="2018">2018</option>
						</select> 
						
						
						<input name="profession" required type="text"
							class="kuang_txt profession" placeholder="专业"> 
							
						<input
							name="classAndGrade" required type="text"
							class="kuang_txt classAndGrade" placeholder="班级">
						
						 <input
							name="dorm" required type="text" class="kuang_txt dorm"
							placeholder="宿舍"> 
							
						<input name="phone" required
							type="text" id="phone" class="kuang_txt phone" maxlength="11"
							placeholder="电话"  
							oninput="this.value=this.value.replace(/\D/g,'')"> 
							
						<input
							name="QQ" id="QQ" required type="text" maxlength="12"
							class="kuang_txt QQ" placeholder="QQ" >
							
						<input name="email" required type="email" class="kuang_txt email"
							placeholder="邮箱">
						<div></div>
						<div>
							<input id="haveRead" type="checkbox"> <span>已阅读并同意<br>
								<a href="#" target="_blank"> <span class="lan">《福师大社团管理系统注册及使用协议》</span></a>
							</span>
						</div>
						<input name="注册" id="register" type="submit" class="btn_zhuce"
							value="注册">

					</form>
					<p>
						已有账号？<a href="login.jsp">立即登录</a>
					</p>
				</div>



			</div>

		</div>

	</div>

	<script type="text/javascript">
		(function check() {
			document.getElementById("register").onclick = function() {
				
				
				if (!document.getElementById("haveRead").checked) {//当没选择已阅读
					alert("请先阅读《福师大社团管理系统注册及使用协议》并选择“已阅读并同意”")
					return false;
				}

				

				return ture;
			}

		})();
		
		function phoneCheck() {

			var checkRole = /^0?(13[0-9]|15[012356789]|18[012346789]|14[57]|17[678]|170[059]|14[57]|166|19[89])[0-9]{8}$/;

			var phone = $("#phone").val();

			if (!checkRole.test(phone)) {

				//alert("手机号格式不正确");

			}

		}

		function phoneCheck() {

			var checkRole = /^0?(13[0-9]|15[012356789]|18[012346789]|14[57]|17[678]|170[059]|14[57]|166|19[89])[0-9]{8}$/;

			var phone = $("#phone").val();

			if (!checkRole.test(phone)) {

				//alert("手机号格式不正确");

			}

		}

		function studentIdCheck() {
			var checkRole1 = /^\d{12}$/;
			var studentId = $("#studentId").val();
			if (!checkRole1.test(studentId)) {
				//alert("学号长度必须为12位");
			}
		}

		function passwordCheck() {
			var checkRole2 = /^[a-zA-Z0-9_-]{6,20}$/;
			var password = $("#password").val();
			if (!checkRole2.test(password)) {
				//alert("密码长度必须不小于6位");
			}
		}

		function passwordConfirmCheck() {
			var checkRole3 = /^[a-zA-Z0-9]{6,20}$/;
			var passwordConfirm = $("#passwordConfirm").val();
			if (!checkRole3.test(passwordConfirm)) {
				//alert("密码长度必须大于6位");
			}
		}

		function qqCheck() {
			var checkRole4 = /^\d{5,12}$/;
			var qq = $("#QQ").val();
			if (!checkRole4.test(qq)) {
				//alert("QQ长度必须大于5位");
			}
		}
	</script>


</body>
</html>
