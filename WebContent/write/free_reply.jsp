<%@page import="com.wacha.model.FreeWriteDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int reply_no = Integer.parseInt(request.getParameter("rno").trim());

	FreeWriteDAO dao = FreeWriteDAO.getInstance();
	
	String str = dao.getReplyList(reply_no);
	
	out.println(str);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>