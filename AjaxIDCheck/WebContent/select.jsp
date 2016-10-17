<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSP</title>
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> -->
	<script type="text/javascript" src="js/jquery-3.1.1.js"></script>
	
	<script type="text/javascript">
		$(document).ready(function(){
			var sport = ${sport};
			var team = ${team};
			
			for (var i = 0; i < sport.length; i++) {
				$("#sport").append("<option value='" + sport[i] + "'>" + sport[i] + "</option>")
			}

		});
	</script>
</head>
<body>
	<select id="sport">
		<option value="empty">선택없음</option>
	</select>
	
	<select id="team">
		<option value="empty">선택없음</option>
	</select>
</body>
</html>