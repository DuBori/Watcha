<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
 
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

	#table_1{
		
	}
	
	#con_1{
		margin-left: 23%;
		margin-top: 30px;
		margin-bottom: 50px;
		border: 1px solid #c6c6c6;
		width: 55%;
		padding: 40px 30px 30px 30px;
		border-radius: 10px;
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
		padding: 25px 10px 10px 25px;
		background-color: #F0F0F0;
	}
	
	#con_3{
		padding: 10px;
	}
	
	#con_4{
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
	
</style>
</head>
<body>

	<jsp:include page="../include/user_top.jsp" />
	
	<div id="con_1">
		<c:set var="rdto" value="${RCont }" />
<%-- 		<c:set var="dto1" value="${userProfile }" /> --%>
		<header>
			<h2>1:1 λ΅λ³</h2>
				<br>
				<img id="pro_img" src="${pageContext.request.contextPath }/image/profileupload/${rdto.getW_image()}">
				<div>
					<b style="font-size: 19px;"> ${session_id } </b>
					<br>
					<a style="font-size: 13px; pointer-events: none; color: #757575;">${rdto.getW_date().substring(0,16) }</a>
				</div>
				<hr>
		</header>	
		

			<div id="con_2">
				<p>
				π’ λ³Έ κ²μνμ μμ±  νμλλ€μ μν μ λ³΄ κ³΅μ κ²μνμλλ€.<br>
				π’ μμ€μ΄λ λΉλκΈμ μμ±ν  μ νλμ μ§, μκ΅¬κ°ν΄ λ  μ μμμ μλ €λλ¦½λλ€.</p>
			</div>
			<br>		
						
			<div id="con_4">
				<c:if test="${rdto.getW_file() ne null }">
					<a href="<%=request.getContextPath() %>/w_write_file/${rdto.getW_file() }">π${rdto.getW_file() }</a>			
				</c:if>
			</div>
			<br>
			
			<div id="con_3">
			
				<p>${rdto.getW_cont() }</p>
			
			</div>

			<hr>

			<c:set var="dto" value="${RRCont }" />
			<c:if test="${rdto.getW_num() eq dto.getR_num() }">
					<table id="table_1">
						<tr>
							<th style="font-size: 20px;">β³ λ΅λ³</th>
						</tr>
						<tr>
							<td><br><span style="font-weight: bold; font-style: italic; font-size: 23px;">WATCHA</span><br>
								μλνμΈμ. μμ± νΌλμμλλ€.<br><br>
								${dto.getR_cont() }<br><br>
								κΆκΈνμ  λ΄μ©μ λν΄ λμμ΄ λμ¨κΈΈ λ°λλλ€.<br><br>
								κ°μ¬ν©λλ€.π<br>
							</td>
						</tr>
					</table>
			</c:if>
			
	</div>
	<jsp:include page="../include/user_bottom.jsp" />

</body>
</html>