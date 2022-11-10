<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세보기 페이지</title>
<style type="text/css">

	#table_1{
		width: 70%;
	}
	
	#con_1{
		margin-left: 25%;
		margin-top: 50px;
		margin-bottom: 50px;
	}
	
	#content{
		resize: none;
		border: none;
		outline: none;
	}


	
	
	#re_writer{
		border: none;
		pointer-events: none;
		font-weight: bold;
		width: 500px;
	}	
	
	#re_content{    
		width: 100%;
	    border: none;
	    resize: none;
	    outline: none;
	}
	
	#replyBtn{
		border: none;
	    font-size: 15px;
	    border-radius: 6px;
	    text-align: center;
	    background-color: white;
	    float: right;
	}
	
	#con_2{
		border: 1px solid #c6c6c6;
		border-radius: 10px;
		padding: 25px 10px 25px 25px;
		background-color: #F0F0F0;
	}
	
	#con_3{
		padding: 10px;
	}
	
	#pro_img{
	
		width: 35px;
		height: 35px; 
		margin: 0; 
		float: left; 
		margin-top: 10px;
		margin-left: 10px; 
		margin-right: 10px;
	}
	
	#tag_1{
		font-weight: bold; 
		color: #000; 
		text-decoration: none;
	}

	
	#tit_btn{
		border: none;
		font-size: 18px;
		font-weight: bold;
		float: right;
		background-color: #fff;
		margin-right: 2%;
	}

	
</style>
</head>
<body>
	<%-- 상단 include 바 --%>
	<jsp:include page="../include/user_top.jsp" />
		
		<div id="con_1">
			<c:set var="dto" value="${Cont }" />

			<c:set var="dto1" value="${userProfile }"></c:set>

			<header>	
				<h2>${dto.getWrite_title() }</h2>				
				<br>
				<img id="pro_img" src="${pageContext.request.contextPath }/image/profileupload/${dto1.getMember_image()}">
				<div>
					<b style="font-size: 19px;"> ${dto.getMember_id() } </b>
					<br>
					<a style="font-size: 13px; pointer-events: none; color: #757575;">${dto.getWrite_date().substring(0,16) } &nbsp; 조회 : ${dto.getWrite_hit() }  </a>
					
					<c:if test="${session_id eq dto.getMember_id() }">
						<button id="tit_btn" onclick="location.href='<%=request.getContextPath()%>/write_modify.do?num=${dto.getWrite_num() }'">수정</button>			
					</c:if>
					
				</div>
				<hr>
				

			</header>
			
			<table class="table table-bordered" id="table_1">
				<tr id="tr_1">
					<th id="th_1" style="width: 100px;">제목</th>
					<td colspan="3"> ${dto.getWrite_title() } </td>
					<th id="th_1">등록일</th>
					<td colspan="3"> ${dto.getWrite_date() } </td>
				</tr>
				
				<tr id="tr_1">
					<th id="th_1">작성자</th>
					<td> ${dto.getMember_id() } </td>
					<th id="th_1">글자수</th>
					<td> (${dto.getWrite_cont().length() }자 / 1000자) </td>
					<th id="th_1">조회수</th>
					<td> ${dto.getWrite_hit() } </td>
				</tr>
				
				<tr id="tr_1">
					<th id="th_1">내용</th>
					<td colspan="6">
						<textarea id="content" rows="17" cols="120" readonly>${dto.getWrite_cont() }</textarea>
					</td>
				</tr>
			</table>
			<%-- 여기서 관리자가 답변을 주었다면 관리자 답변도 함께 띄워주고 / 답변이 없다면 null이라면 콘텐츠만 띄워준다. --%>
			<div id="con_2">
			<c:set var="rdto" value="${Reply }" />
				<c:if test="${dto.getWrite_num() eq rdto.getWrite_num() }">
					<table class="table table-bordered" id="table_1">
						<tr>
							<th style="width: 100px;">↳ 답변</th>
							<td><span style="font-weight: bold; font-style: italic; font-size: 23px;">WATCHA</span><br>
								안녕하세요. 왓챠피디아입니다.<br><br>
								${rdto.getReply_cont() }<br><br>
								궁금하신 내용에 대해 도움이 되셨길 바랍니다.<br><br>
								감사합니다.😄<br>
							</td>
						</tr>
					</table>
				
				</c:if>
			
			</div>

		</div>

	<%-- 하단 include 바 --%>
	<jsp:include page="../include/user_bottom.jsp" />

</body>
</html>
