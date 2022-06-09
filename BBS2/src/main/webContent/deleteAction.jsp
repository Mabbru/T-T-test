<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8") %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tutor_Tutee</title>
</head>
<body>
    <%
        String userID= null;
        if(session.getAttribute("userID") != null){
        	userID = (String) session.getAttribute("userID");
        }
        if(userID == null{
        	PrintWriter
        }
    %>
</body>
</html>