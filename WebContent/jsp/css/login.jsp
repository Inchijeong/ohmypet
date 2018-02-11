<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


</head>
<body>
<c:import url="/jsp/common/top.jsp"/>
	<div class="container">
		<br><br><br>
		<h1>로그인</h1>
		<p>${error}</p>
		<form action="/ohmypet/com/omp/common/controller/login">
		<table class="table table-bordered">
	
			<tr>
				
				<td style="height: 23px; width: 318px;">아이디:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="text" name="id"  placeholder="아이디를 입력하세요 "/></td>
				<td rowspan="2"><button>로그인</button></td>
			</tr>
			
			<tr>
				<td>비밀번호:&nbsp;
				<input type="password" name="password" placeholder="비밀번호를 입력하세요 " /></td>
			</tr>
		</form>
			
				<tr><form action="/ohmypet/jsp/css/join.jsp"><button>회원가입</button></form>
				<form action="/ohmypet/jsp/css/idsearch.jsp"><button>아이디찾기</button></form>
				<form action="/ohmypet/jsp/css/passwordsearch.jsp"><button>비밀번호찾기</button></form><tr>
			
			
		</table>
			
	</div>
</body>
</html>