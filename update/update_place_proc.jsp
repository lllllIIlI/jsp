<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file = "connectDB.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String menu = request.getParameter("menu");
	int open = Integer.parseInt(request.getParameter("open"));
	String breaktime = request.getParameter("breaktime");
	int close = Integer.parseInt(request.getParameter("close"));
	int distance = Integer.parseInt(request.getParameter("distance"));
	String call = request.getParameter("call");
	String oldname = request.getParameter("oldname");
	int no = Integer.parseInt(request.getParameter("no"));
	
	String sql = "update place set name=?, menu=?, open=?, breaktime=?, close=?, distance=?, phone=?, no =? where name = ?";
	
	PreparedStatement ps = conn.prepareStatement(sql);
	
	ps.setString(1, name);
	ps.setString(2, menu);
	ps.setInt(3, open);
	ps.setString(4, breaktime);
	ps.setInt(5, close);
	ps.setInt(6, distance);
	ps.setString(7, call);
	ps.setInt(8, no);
	ps.setString(9, oldname);
	
	ps.executeUpdate();
	
	response.sendRedirect("listResult.jsp");
%>
