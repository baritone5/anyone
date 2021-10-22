<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tiles left 사이드 메뉴</title>
<link rel="stylesheet" href="/resources/css/tiles/sidebar.css">
</head>
<body>
	<div class="SideBar">
		<h3>메뉴</h3>
		<ul>
			<li><a href="">영화</a>
				<ul class="low">
					<li><a href="/userMovieListMysql.do">전체 목록(MySql)</a>
					<li><a href="/userMovieListOracle.do">전체 목록(Oracle)</a>
					<li><a href="">게시판 하위</a>
					<li><a href="">게시판 하위</a>
				</ul>
			</li>
			<li><a href="/mysqlUserBoard1List.do">MySQL 게시판 목록</a>
			<li><a href="/oracleUserBoard1List.do">Oracle 게시판 목록</a></li>
			<li><a href="/testboard.do">MySQL 게시판 목록2</a></li>
			<li><a href="/user/board/list">Oracle 게시판 목로2</a></li>
			<li><a href="/memberModify.do">ajax테스트</a></li>
		</ul>
	</div>
</body>
</html>