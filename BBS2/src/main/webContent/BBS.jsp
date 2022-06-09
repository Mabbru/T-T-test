<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.PrintWriter" %>
    <%@ page import="bbs.BbsDAO" %>
    <%@ page import="bbs.Bbs" %>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", intital-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>Tutor_Tutee</title>
<style type="text/css">
    a, a:hover {
        coloer: #000000;
        text-decoration:none;
    }
</style>
</head>
<body>
    <%
        String userID = null;
        if (session.getAttribute("userID") != null){
        	userID = (String)session.getAttribute("userID");
        }
        int pageNumber =1;
        if(request.getParameter("pageNumber") != null){
           pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
        }
    %>
    
    <nav class="navbar navbar-default">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed"
                data-toggle="collapse" data-target="#bs00example-navbar-collapse-1"
                aria-expanded="false">
                <span class="icon-bar"></span><!-- 메뉴 오른쪽 아이콘 바 -->
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="main.jsp">Tutor_Tutee</a>
        </div>
        <div class="collapse navbar-collaspe" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="main.jsp">메인</a>
                <li class="active"><a href="bbs.jsp">게시판</a>
            </ul>
            <%
                if(userID == null){
            %>
            <ul class="nav navbar-nav navbar-right">
                <li class="deopdown">
                    <a href="#" class="dropdown-toggle"
                        data-toggle="dropdown" role="button" aria-haspopup="true"
                        aria-expanded="false">접속하기<span class=""caret"></span>></a>
                    <ul class="dropdown-menu">
                         <li><a href="login.jsp">로그인</a></li>
                         <li><a href="join.jsp">회원가입</a></li>
                    </ul>     
                </li>
            </ul>
            <%
                }else{
            %>  
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle"
                        data-toggle="dropdown" role="button" aria-haspopup="true"
                        aria-expanded="flase">회원관리<span class="caret"></span></a>
                </li>
            </ul>   
            <%
                }
            %>
        </div>
    </nav>
    <div class="container">
        <div class="row">
            <table class="table table-striped" style="text-align: center; border:1px solid #dddddd">
                <thead>
                    <tr>
                        <th style="background-color:#eeeeee; text-align: center;">번호</th>
                        <th style="background-color:#eeeeee; text-align: center;">제목</th>
                        <th style="background-color:#eeeeee; text-align: center;">작성자</th>
                        <th style="background-color:#eeeeee; text-align: center;">작성일</th>
                    </tr>
                </thead>    
        </div>
    </div>
</body>
</html>