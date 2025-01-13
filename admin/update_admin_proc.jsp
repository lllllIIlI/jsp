<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file = "connectDB.jsp" %>
<%
	String admin_id = request.getParameter("id");
	String admin_password = request.getParameter("password");
	
	String session_id = (String)session.getAttribute("id");
	
	String sql = "update admin set id = ?, password = ? where id = ?";
	
	PreparedStatement ps = conn.prepareStatement(sql);
	
	ps.setString(1, admin_id);
	ps.setString(2, admin_password);
	ps.setString(3, session_id);
	
	ps.executeUpdate();
	
	session.removeAttribute("id");
	session.setAttribute("id", admin_id);
	
	response.sendRedirect("search.jsp");
%>
