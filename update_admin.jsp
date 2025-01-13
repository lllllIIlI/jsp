<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	input[type=text] {
		border: 2px solid #1e73be;
	}
	
	input[type=submit] {
		border: 2px solid #1e73be;
		font-size: 24px;
	}
</style>
<%
	String sql = "select * from admin where id = ?";
	String admin_id = (String)session.getAttribute("id");
	
	PreparedStatement ps = conn.prepareStatement(sql);
	
	ps.setString(1, admin_id);
	
	ResultSet rs = ps.executeQuery();
	
	if (rs.next()) {

%>
<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<th align="center">
				<br>
				<a href="search.jsp"> 검색 </a>
				<a href="listResult.jsp"> 맛집 리스트 </a>
				<a href="login.jsp" style="color: black; border-bottom: 2px solid #1e73be"> 로그인 </a><br>
			</th>
		</tr>
		<tr><th><br><br></th></tr>
		<tr><th><br><br></th></tr>
		<tr><th><br><br></th></tr>
		<tr>
		<form action="update_admin_proc.jsp">
			<table style="border:2px solid #1e73be;" cellpadding="5" cellspacing="10" align=center>
				<tr><th align="center" style="font-size:24px">ID</th>
				<th><input type="text" name="id" value="<%=rs.getString("id") %>" style="font-size:30px"></th></tr>
				<tr><th align="center" style="font-size:24px">PASSWORD</th>
				<th><input type="text" name="password" value="<%=rs.getString("password") %>" style="font-size:30px"></th></tr>
				<tr><td align="center" colspan="2"><input type="submit" value="수정">
			</table>
		</form>
		</tr>
	</table>
</body>
<%
	}
%>
</html>