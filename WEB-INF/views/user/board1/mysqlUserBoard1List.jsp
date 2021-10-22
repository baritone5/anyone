<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 목록</title>
</head>
<body>
	<table border="1" width="350">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>내용</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${mub1list}" var="mub1list">
				<tr>
					<td>${mub1list.board_seq}</td>
					<td>${mub1list.board_subject}</td>
					<td>${mub1list.board_content}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>