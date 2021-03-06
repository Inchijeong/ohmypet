<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" href="/ohmypet/css/style.css">
 <!-- jquery 적용위해 추가 -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
 <script>
 		
	  $(function(){
	    	var pull=$('#pull');
	      	    menu=$('nav ul');
	      	    menuHeight=menu.height();   	      
	      $(pull).on('click', function(e){
	      	e.preventDefault();
	      	menu.slideToggle();   	      	
	      });
	      $(window).resize(function(){
	      	var w=$(window).width();
	      	if(w>600 && menu.is(':hidden'))
	      		{menu.removeAttr('style');}
	      });
   	  });
   	 
   	   $( document ).ready( function() {
           var jbOffset = $( '.clearfix' ).offset();
           $( window ).scroll( function() {
             if ( $( document ).scrollTop() > jbOffset.top ) {
               $( '.clearfix' ).addClass( 'jbFixed' );
             }
             else {
               $( '.clearfix' ).removeClass( 'jbFixed' );
             }
           });
         });
</script>
<style>
	h1.top {
    text-align: center;
    font-size: 60px;
    color : #3498DB;
	}      
	body {
        margin: 0;
        padding: 0px;
      }
      
      .jbTitle {
        text-align: center;
      }
      .jbMenu {
        text-align: center;
        background-color: yellow;
        padding: 10px 0px;
        width: 100%;
      }
      .jbContent {
        height: 2000px;
      }
      .jbFixed {
        position: fixed;
        top: 0px;
      }
      .con-member{
      	float: right;
      	margin-right: 50px;
      }
			button.id{
			float: right;
			}
			.mem-form{
				float: right;
			}
</style>
</head>
<body>
	<div style="margin-top:30px">
		<h1 class="top" >오늘 나의 펫</h1> 
	</div>
	<div>
		<c:choose>
			<c:when test="${empty user}">
				<div class="con-member">
					<form class="mem-form" action="/ohmypet/jsp/css/join.jsp">
						<button class="id btn btn-default">회원가입</button>
					</form>
					<form class="mem-form" action="/ohmypet/jsp/css/login.jsp">
						<button class="id btn btn-default">로그인</button>
					</form>
				</div>
			</c:when>


			<c:otherwise>
				<div class="con-member">
					<form action="/ohmypet/com/omp/common/controller/logout">
						<button class="id btn btn-default">로그아웃</button>
					</form>
				</div>
			</c:otherwise>
		</c:choose>
	</div>

<div style="margin-top:60px; margin-bottom:20px;">
<nav class="clearfix">
   	      <ul >
   	        <li><a href="${pageContext.request.contextPath}/main"  id="all" value="HOME">HOME</a></li>
			<li><a href="${pageContext.request.contextPath}/com/omp/dictionary/controller/search"  id="dog" value="사전">동물 사전</a></li>
			<li><a href="${pageContext.request.contextPath}/com/omp/photo/list" class="botton" id="cat" value="사진">사진</a></li>
			<li><a href="${pageContext.request.contextPath}/com/omp/freeboard/controller/freelist"  id="honey" value="게시판">게시판</a></li>
			<li><a href="${pageContext.request.contextPath}/store/main">스토어</a></li>
			<li><a href="${pageContext.request.contextPath}/com/omp/css/controller/cssselect" id="honey" value="고객센터">고객센터</a></li>
   	      </ul>
   	      <a id="pull" href="#">Menu</a>
   	  </nav>
</div>
</body>
</html>