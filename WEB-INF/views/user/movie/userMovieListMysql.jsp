<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 목록(MySql)</title>
<link rel="stylesheet" href="/resources/css/movie/list.css">
<script type="text/javascript">
	$(document).ready(function(){
		getUserMovieList();
	});
	
	function getUserMovieList(){
		$.ajax({
			type:"GET",
			url:"/gettestboard.do",
			dataType:"JSON",
			success:function(obj){
				getBoardListCallback(obj);
			},
			error : function(xhr, status, error) {}
		});
	}
	
	function getBoardListCallback(obj) {
		
		var list = obj;
		var listLen = obj.length;
		
		var str = "";
		
		if( listLen > 0) {
			
			for (var a = 0; a < listLen; a++) {
				var trNum = list[a].trNum;
				var trtitle = list[a].trtitle;
				var trdate = list[a].trdate;
				
				str += "<tr>";
				str += "<td>" + trNum + "</td>";
				str += "<td onclick='javascript:goBoardDetail(" + trNum + ");' style='cursor:Pointer'>" + trtitle + "</td>";
				str += "<td>" + trdate + "</td>";
				str += "</tr>";
			}
		} else {
			str += "<tr colspan='4'";
			str += "<td>글 없음</td>";
			str += "</tr>";
		}
		$("#tbody").html(str);
	}
</script>
</head>
<body>
	<h2>영화 목록(MySql)</h2>
	<table class="board_list">
		<colgroup>
			<col width="20%"/>
			<col width="20%"/>
			<col width="20%"/>
			<col width="20%"/>
			<col width="*"/>
		</colgroup>
		<thead>
			<tr>
				<th scope="col">제목(한글)</th>
				<th scope="col">제목(영문)</th>
				<th scope="col">개봉일</th>
				<th scope="col">국적</th>
				<th scope="col">장르</th>
			</tr>
		</thead>
		<tbody id="tbody">
			
		</tbody>
	</table>
</body>
</html>