<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import = "java.sql.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 & 맛집추천</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src = "js/jquery-3.6.1.min.js"></script>
<script src = "js/search.js"></script>							
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

	input[type=radio] { 
		display:none; 
		margin:10px; 
	}
	
	input[type=radio] + label {
		display: inline-block;
		margin-right: -3px;
		margin-left: -3px;
		padding-top: 8px;
		padding-bottom: 8px;
		border-top: 2px solid #444444;
		border-bottom: 2px solid #444444;
		font-size: 13px;
		text-align: center;
		width: 25%;
	}
	
	label {
		display: inline-block;
		margin-right: -3px;
		margin-left: -3px;
		padding-top: 8px;
		padding-bottom: 8px;
		border-top: 2px solid #444444;
		border-bottom: 2px solid #444444;
		font-size: 13px;
		text-align: center;
		width: 16.6666667%;
	}
	

	input[type=radio]:checked + label { 
		background-color: #1e73be; 
		color: white;
	}
	
	button { 
		margin:10px;  
		background-color: #1e73be;
		color: white;
		border: 1px solid darkgray;
		width: 180px;
		height: 50px;
		font-size: 18px;
	}
	
	
	#click1 {
		background-color: #1e73be;
		color: white;
	}
</style>
<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<th align="center">
				<br>
				<a href="search.jsp" style="color: black; border-bottom: 2px solid #1e73be"> 검색 </a>
				<a href="listResult.jsp"> 맛집 리스트 </a>
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
				%>
			</th>
		</tr>
		<tr>
			<td>
				<br>
				<form action="searchResult.jsp">
				<table align="center" width=70% style="border-spacing: 0 10px; table-layout: fixed;">
					<tr>
						<th style="font-size:15px; padding: 2px; border: 2px solid #1e73be">
							<div>오늘 뭐 먹지? 추천 버튼을 눌러보세요!</div>
						</th>
					</tr>
					<tr>									
						<th>
						<div>
							<input type="radio" id="cell1.1" name="select1" value="1"  checked>
							<label for="cell1.1">전체</label>
							<input type="radio" id="cell1.2" name="select1" value="2">
							<label for="cell1.2">식사</label>
							<input type="radio" id="cell1.3" name="select1" value="3">
							<label for="cell1.3">간식</label>
							<input type="radio" id="cell1.4" name="select1" value="4">
							<label for="cell1.4">술</label>
						</div>
						<br>
						<div>
							<label id = "click1" for="cell2.1"><input type="radio" id="cell2.1" name="select2" value="0" checked>전체</label>
							<label id = "click2" for="cell2.2"><input type="radio" id="cell2.2" name="select2" value="1">한식</label>
							<label id = "click3" for="cell2.3"><input type="radio" id="cell2.3" name="select2" value="2">중식</label>
							<label id = "click4" for="cell2.4"><input type="radio" id="cell2.4" name="select2" value="3">일식</label>
							<label id = "click5" for="cell2.5"><input type="radio" id="cell2.5" name="select2" value="4">양식</label>
							<label id = "click6" for="cell2.6"><input type="radio" id="cell2.6" name="select2" value="5">아시아</label>
						</div>
						<br>
						<div>
							<input type="radio" id="cell3.1" name="select3" value="0" checked>
							<label for="cell3.1">전체</label>
							<input type="radio" id="cell3.2" name="select3" value="1">
							<label for="cell3.2">1인</label>
							<input type="radio" id="cell3.3" name="select3" value="4">
							<label for="cell3.3">2인~4인</label>
							<input type="radio" id="cell3.4" name="select3" value="5">
							<label for="cell3.4">5인~</label>
						</div>
						<br>
						<div>			
							<input type="radio" id="cell4.1" name="select4" value="0" checked>
							<label style = "border-bottom: 0px;"for="cell4.1">전체</label>
							<input type="radio" id="cell4.2" name="select4" value="1">
							<label style = "border-bottom: 0px;"for="cell4.2">~12시</label>
							<input type="radio" id="cell4.3" name="select4" value="2">
							<label style = "border-bottom: 0px;"for="cell4.3">1시</label>
							<input type="radio" id="cell4.4" name="select4" value="3">
							<label style = "border-bottom: 0px;"for="cell4.4">2시</label>
						</div>
						<div>	
							<input type="radio" id="cell4.5" name="select4" value="4">
							<label style = "border-top:0px;" for="cell4.5">3시</label>
							<input type="radio" id="cell4.6" name="select4" value="5">
							<label style = "border-top:0px;" for="cell4.6">4시</label>
							<input type="radio" id="cell4.7" name="select4" value="6">
							<label style = "border-top:0px;" for="cell4.7">5시</label>
							<input type="radio" id="cell4.8" name="select4" value="7">
							<label style = "border-top:0px;" for="cell4.8">6시~</label>
						</div>
						</th>
					</tr>
					<tr>
						<td width=100% height=300px align=center style="border: 2px solid #1e73be">
							<div id="none">
								<%
									if(session.getAttribute("rs")!=null) {
										
										ResultSet rs = (ResultSet)session.getAttribute("rs");
										while(rs.next()) {
								%>
										
										<%=rs.getString("name") %><br>
										<%=rs.getString("menu") %><br>
										오픈시간 : <%=rs.getString("open") %>시 ~ <%=rs.getString("close") %>시
										<br>
										거리 : <%=rs.getString("distance") %> 분<br>
										<%=rs.getString("phone") %>
										
										<br>
										<p>breakTime : <%=rs.getString("breaktime") %></p>
								<% 		}
									} %>
							</div>
						</td>	
					</tr>
					<tr>
						<td align="center">
							<button id=recommand>추천받기</button>
						</td>
					</tr>
				</table>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>