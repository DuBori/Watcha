<%@page import="java.io.PrintWriter"%>
<%@page import="com.wacha.model.ComentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <%
    	int movie_num=Integer.parseInt(request.getParameter("movie_num"));
    	int coment_num=Integer.parseInt(request.getParameter("coment_num"));
    	String member_Id = request.getParameter("member_Id");
    	
    	System.out.println(movie_num+","+coment_num+","+member_Id);
    	
    	ComentDAO coment_dao = ComentDAO.getInstance();
    	
    	int chk = coment_dao.likeComent(movie_num,coment_num,member_Id);
    			  
    	// 1이면 -1이고 0이면 +1이고 
    	out.print(chk);
    	
    %>