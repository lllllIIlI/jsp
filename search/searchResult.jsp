<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="menu.Place" %>
<%@include file ="connectDB.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String select1 = request.getParameter("select1");
		String select2 = request.getParameter("select2");
		String select3 = request.getParameter("select3");
		String select4 = request.getParameter("select4");
		
		if(select1.equals("1")) {
			select1  = "_";
		}
		if(select2.equals("0")) {
			select2 = "_";
		}
		if(select3.equals("0")) {
			select3 = "_";
		}
		if(select4.equals("0")) {
			select4 = "_";
		}
		
		
		
		
		String select = select1+select2+select3+select4;
		String sql = "select * from place where no like ? ORDER BY RAND() LIMIT 1";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, select);
		ResultSet rs = ps.executeQuery();
		session.setAttribute("rs", rs);
		response.sendRedirect("search.jsp");
			
		%>
	
</body>
</html>
