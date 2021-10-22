<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		getBoardList();
	});
	
	function getBoardList(){
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
	
	function goBoardDetail(trNum) {
		$.ajax({
			type:"POST",
			url:"goBoardDetail.do",
			data : { IDX : JSON.stringify(trNum) },
		});
	}
</script>
</head>
<body>
	<table border=1>
		<thead>
			<tr>
				<td>글번호</td>
				<td>제목</td>
				<td>날짜</td>
			</tr>
		</thead>
		<tbody id="tbody">
		
		</tbody>
	</table>
</body>
</html>