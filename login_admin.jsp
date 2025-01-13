<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file = "connectDB.jsp" %>
<%
	String admin_id = request.getParameter("id");
	String admin_password = request.getParameter("password");
	String sql = "select * from admin where id = ? and password = ?";
	
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1, admin_id);
	ps.setString(2, admin_password);
	
	String msg = "login.jsp";
	
	ResultSet rs = ps.executeQuery();
	
	if(rs.next()) {
		session.setAttribute("id",admin_id);
		msg = "search.jsp";
	}
	
	response.sendRedirect(msg);
%>