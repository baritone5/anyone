<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
<title>Home</title>
</head>
<body>
<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성일</th>
			<th>작성자</th>
			<th>조회수</th>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach items="${ablist}" var="ablist">
			<tr>
				<td>${ablist.trnum}</td>
				<td>${ablist.trtitle}</td>
				<td>${ablist.trdate}</td>
				<td>${ablist.test}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>
