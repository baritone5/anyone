<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/tiles/default.css">
</head>
<body>
	<div class="wrap">
		<tiles:insertAttribute name="header" />
		<div class="content">
			<tiles:insertAttribute name="sidebar" />
			<div class="content_box">
				<tiles:insertAttribute name="body" />
			</div>
		</div>
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>