<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="review.dto.Seoul"%>
    
<%	List<Seoul> list = (List) request.getAttribute("seoulList"); %><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%	for(int i=0; i<list.size(); i++) { %>

<h1 onclick="location.href='/detail?upso_sno=<%=list.get(i).getUpso_sno() %>'">
업소번호<%=list.get(i).getUpso_sno() %></h1>



<%	} %>

</body>
</html>