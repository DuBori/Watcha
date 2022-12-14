<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정 페이지</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.js"></script>
<script type="text/javascript">

$(function(){
	
	$("textarea.autosize").on('keydown keyup', function () {
	  	$(this).height(1).height( $(this).prop('scrollHeight')+12 );	
		});	

	// textarea에서 입력한 글자 만큼 세주는 함수.	
	$(document).ready(function() {
	    $('#text1').on('keyup', function() {
	        $('#cnt').html("("+$(this).val().length+" / 1000)");
	 
	        if($(this).val().length > 1000) {
	            $(this).val($(this).val().substring(0, 1000));
	            $('#cnt').html("(1000 / 1000)");
	        }
	    });
	});
	
});

</script>
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
		border: none;
		background-color: white;
	}
	
	/* 제목 입력 박스 */
	#title_box{
		width: 100%;
		border: none;
	 	resize: none;
		outline: none;
	}
	
	#text1{
		width: 100%;
		border: none;
	 	resize: none;
		outline: none;
	}
	
	#tit{
		resize: none;
		border: none;
		outline: none;
	}
	
	#tit_btn{
		margin-left: 0;
		border: none;
		font-size: 18px;
		background-color: #fff;
		text-decoration: none;
		font-weight: bold;
		float: right;
	}

	#tit_btn1{
		margin-left: 0%;
		border: none;
		font-size: 18px;
		font-weight: bold;
		background-color: #fff;
		float: right;
	}

</style>
</head>
<body>

	<%-- 상단 include 바 --%>
	<jsp:include page="../include/user_top.jsp" />
		
		<div id="con_1">
		<form method="post" action="<%=request.getContextPath() %>/write_modify_ok.do">
			<c:set var="dto" value="${Modify }" />
			<c:set var="dto1" value="${userProfile }" />
			<input type="hidden" name="write_num" value="${dto.getWrite_num() }">
			<header>
				<p style="color: red;">[ 수정중 ]</p>
				
				<h2><textarea name="write_title" id="title_box" class="autosize" style="overflow: hidden; min-height: 50px;">${dto.getWrite_title() }</textarea></h2>

				<br>

				<img id="pro_img" src="${pageContext.request.contextPath }/image/profileupload/${dto1.getMember_image()}">

				<div>
					<b style="font-size: 19px;"> ${session_id } </b>
					<br>
					<a style="font-size: 13px; pointer-events: none; color: #757575;">${dto.getWrite_date().substring(0,16) } &nbsp; 조회 :${dto.getWrite_hit() }</a>
					<input type="submit" id="tit_btn" value="/ 수정완료"><input type="reset" id="tit_btn1" value="초기화"> 
				</div>
				
				<hr>	
							
			</header>

			<div id="con_2">
				<p>
				📢 본 게시판은 왓챠 회원님들의 영화 정보 공유게시판입니다.<br>
				📢 욕설이나 비난글을 작성할 시 활동정지, 영구강퇴 될 수 있음을 알려드립니다.</p>
			</div>
			<br>
			
			<div id="con_3">
			
				<textarea name="write_cont" id="text1" class="autosize" style="overflow: hidden; min-height:250px;">${dto.getWrite_cont() }</textarea>
			
			</div>
			<p id="cnt" style="float: right; font-size: 12px;">(${dto.getWrite_cont().length() }자 / 1000자)</p>
	
		</form>
		</div>

	<%-- 하단 include 바 --%>
	<jsp:include page="../include/user_bottom.jsp" />

</body>
</html>
