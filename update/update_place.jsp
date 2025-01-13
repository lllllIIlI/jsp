<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="menu.Place" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file = "connectDB.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 & 맛집추천</title>
</head>
<style>
	a {
		text-decoration: none;
		font-size: 100%;
		color: gray;
		margin: 3%;
		padding: 1%;
	}
	
	a:hover { color: black; }
</style>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	
	String sql = "select * from place where name = ?";
	
	PreparedStatement ps = conn.prepareStatement(sql);
	
	ps.setString(1, name);
	ResultSet rs = ps.executeQuery();
	
	if (rs.next()){
%>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<th align="center" style="margin-top: 50px;">
				<br>
				<a href="search.jsp"> 검색 </a>
				<a href="listResult.jsp" style="color: black; border-bottom: 2px solid #1e73be"> 맛집 리스트 </a>
				<a href="share.jsp"> 맛집 공유 </a>
				<% 
					if (session.getAttribute("id") == null) {
				%>
				<a href="login.jsp"> 로그인 </a><br>
				<% 
					} else {
				%>
				<a href = "logout.jsp">로그아웃</a>
				<a href = "update_admin.jsp">회원수정</a>
				<%
					}
				%><br>
			</th>
		</tr>
		<tr>
			<th><br></th>
		</tr>
		<tr>
			<td height="600px" align="center" style="border: 2px solid #1e73be">
				<table align="center" width="70%" style="border-spacing: 0 10px;">
					<tr><td>no</td><td>이름</td><td>메뉴</td><td>오픈시간</td><td>브레이크타임</td><td>마감시간</td><td>거리</td><td>전화번호</td></tr>
					<form action="update_place_proc.jsp" method="post">
						<tr>
							<td><input type = "text" name = "no" value = "<%=rs.getString("no") %>"></td>
							<td><input type = "text" name = "name" value = "<%=rs.getString("name") %>"></td>
							<td><input type = "text" name = "menu" value = "<%=rs.getString("menu") %>"></td>
							<td><input type = "text" name = "open" value = "<%=rs.getString("open") %>"></td>
							<td><input type = "text" name = "breaktime" value = "<%=rs.getString("breaktime") %>"></td>
							<td><input type = "text" name = "close" value = "<%=rs.getString("close") %>"></td>
							<td><input type = "text" name = "distance" value = "<%=rs.getString("distance") %>"></td>
							<td><input type = "text" name = "call" value = "<%=rs.getString("phone") %>"></td>
						</tr>
						<tr><td><input type = "submit" value ="수정"></td><input type="hidden" value="<%=name%>" name = "oldname"></tr>
					</form>
				</table>
			</td>
		</tr>
	</table>
<%	} %>
</body>
</html>
