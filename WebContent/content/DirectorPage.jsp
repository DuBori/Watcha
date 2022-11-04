<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
	#maindiv{
		margin: 0px 10% 0px 10%;
	}
	
	#contentDiv{
		display: flex;
		flex-direction: row;
	
	}
	
	#firstDiv{
		width: 80%;
	}
	
	#secondDiv{
		display : flex;
		justify-content : center;
		width: 20%;
		background-color: gray;
	}
	
	#catediv{
		display: flex;
		flex-direction: column;
	}
	
	#catediv div{
		display: flex;
		justify-content: space-around;
		align-content: center;
	}
	#catediv:nth-child(1){
		
	
	}
	img{
		margin: 0 !important;
		object-fit: cover;
	}
	
	.movie_list{
		height: 50%;
		display : flex;
		align-items: center;
	}
	#topdiv{
		display : flex;
		flex-direction :column;
		justify-content : center;
		height: 160px;
	
	}
	#topdiv img{
		width : 100px;
		height: 100%; 
		border-radius: 5%
	}
	.ming{
		width: 100px !important;
		height: 80px !important;
		
	}
	.imgdiv{
		flex-direction: column;
		justify-content: center !important;
		align-items: center !important;	
		padding: 1% 1%;
	}
	#direcFont{
		font-size: 30px;
	}
	#role{
		color: gray;
		font-size: 15px;
	}
	.bothr{
		margin: 1% 0;
	}
</style>
</head>
<body>
	<jsp:include page="../include/user_top.jsp"/>
	
	<div align="left" >
		<button type="button" class="btn btn-danger" onclick="history.back()"><img src="${pageContext.request.contextPath}/image/contImg/back.png" width="10px" height="15px"></button>
	</div>
	<hr>
	<div id="maindiv">
		<div id="topMargindiv">
			<div id="topdiv">
				<img alt="없음" src="${image_dto.getDirector_image()}" width="200px" height="200px">
				<span id="direcFont">${movie_dto.getMovie_director() }</span>
			</div>
			<span id="role">감독</span>
			<hr>
			<span><b>영화</b></span>
			
			<hr>
		</div>
	<!-- 영화 리스트 구간 // 네비게이션 구간  -->
	<div id="contentDiv">
		<div id="firstDiv">
			<div>
			
				<!-- 속성   -->
				<div id="catediv">
					<div>
						<div>제작연도</div>
						<div>제목</div>
						<div>감독</div>
						<div>평가</div>
					</div>
					<hr class="bothr">
		<c:choose>
			<c:when test="${!empty movie_list}">
				<c:forEach items="${movie_list }" var="dto">
					<div class="movie_list">
						<div>${dto.getMovie_date() }</div>
						<div class="imgdiv"><img class="mimg" alt="없음" src="${dto.getMovie_imageloc() }" width="100px" height="200px"><span>${dto.getMovie_title() }</span></div>
						<div>${dto.getMovie_director()}</div>
						<div>★${dto.getMovie_avgstar()}</div>
					</div>
					<hr class="bothr">
				</c:forEach>	
			</c:when>
			<c:otherwise>	
				<div>죄송합니다만 이 분은 영화 감독 제작을 하지 않았어요</div>	
				<hr>
			</c:otherwise>
		</c:choose>
				</div>
			</div>
		</div>
		
		<div id="secondDiv">
			<div>

			</div>
		</div>
	</div>
	</div>
	
	<jsp:include page="../include/user_bottom.jsp"/>
</body>
</html>