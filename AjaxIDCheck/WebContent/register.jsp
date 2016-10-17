<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSP</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	
	<script type="text/javascript">
		$(document).ready(function() {
			$("#id").keyup(function() {
				if($("#id").val().length > 5){
					var id = $(this).val();
					
					$.ajax({
						type: 'POST',
						url: 'checkId.do',
						data:
							{
								id: id
							},
						success: function(result){
							if($.trim(result)=="ok"){
								$("#idCheckResult").html("사용가능한 ID입니다.");
							} else {
								$("#idCheckResult").html("사용중인 ID입니다.");
							}
						}
					});
					
				}else{
					$("#idCheckResult").html("ID는 5자 이상입니다.");
				}
			});
		});
	</script>
</head>
<body>
	<input type="text" id="id" name="idCheck" placeholder="ID입력" />
	<span id="idCheckResult"></span>
</body>
</html>