<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Author" content="小刘民宿">
  <meta name="Keywords" content="小刘民宿预订管理系统">
  <meta name="Description" content="小刘民宿预订管理系统">
  <title>小刘民宿|前台预订</title>
  <link href="../resources/home/css/index.css" type="text/css" rel="Stylesheet" />
  <link href="../resources/home/css/login.css" type="text/css" rel="Stylesheet" />
 </head>
 <body>

       
<section>
	<div class="all">
		<div class="loginbar">
			<div id="welcome1">欢迎光临小刘民宿！❤</div>
			<div>
				<div style="float:left;margin-left:50px;margin-top:3px;">用户名：</div>
				<input class="input1" id="name" name="uname" type="text" placeholder="请输入用户名">
			</div>
			<div>
				<div style="float:left;margin-left:50px;margin-top:3px;">密&nbsp;&nbsp;&nbsp;码：</div>
				<input class="input1" id="password" name="upwd" type="password" placeholder="密码">
			</div>
			<div class="loginButton"><div class="log" id="bt_login" style="padding-top: 5px;cursor:pointer;">登 录</div></div>
		
			<div class="reg" style="margin-left:280px;margin-top:20px;">
		   		<a href="reg">立即注册 &gt;&gt;</a>
			</div>
		</div>
	</div>
		
</section>
       <%@include file="../common/footer.jsp"%>
	  <script src="../resources/home/js/jquery-1.11.3.js"></script>
<script>
/* function changeVcode(){
	$("#cpacha-img").attr("src",'../system/get_cpacha?vl=4&w=173&h=33&type=accountLoginCpacha&t=' + new Date().getTime());
} */
$(document).ready(function(){
	$("#bt_login").click(function(){
		var name = $("#name").val();
		var password = $("#password").val();
		if(name == '' || password == ''){
			alert('请填写完成信息再提交!');
			return;
		}
		$.ajax({
			url:'login',
			type:'post',
			dataType:'json',
			data:{name:name,password:password},
			success:function(data){
				if(data.type == 'success'){
					window.location.href = 'index';
				}else{
					alert(data.msg);
					//changeVcode();
				}
			}
		});
	})
});

</script>
 </body>
</html>
