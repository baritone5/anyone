<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	function AjaxEx() {
		var name = "name=" + document.check.name.value;
		
		$.ajax({
			url : "/check",
			type : "post",
			data : name,
			dataType : "json",
			success : function(data) {
				document.getElementById("result").innerHTML = data + "님 반갑습니다.";
			},
			error : function(request) {
				alert("실패");
			}
		});
	}
</script>
</head>
<body>
	<h3>Ajax 예문</h3>
	<form name="checkk" method="post">
		<input type="text" id="name">
		<input type="button" value="클릭" onclick="AjaxEx()">
		<div id="result"></div>
	</form>
</body>
</html>