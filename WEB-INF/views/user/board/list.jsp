<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 목록</title>
</head>
<body>

<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성일</th>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach items="${mublist}" var="mublist">
			<tr>
				<td>${mublist.trNum}</td>
				<td>${mublist.trtitle}</td>
				<td>${mublist.trdate}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성일</th>
			<th>테스트</th>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach items="${oublist}" var="oublist">
			<tr>
				<td>${oublist.trnum}</td>
				<td>${oublist.trtitle}</td>
				<td>${oublist.trdate}</td>
				<td>${oublist.test}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

</body>
</html>