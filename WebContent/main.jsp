<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>
<style type="text/css">
	body {
		position: absolute;
		top: 50%;
		width: 100%;
		height: 100%;
		overflow: hidden;
		background-color:#FC0;
	}
	.center {  
		text-align: center; 
	}
	input {
		width:40%;
		border: 0px;
		height: 50px;
	}
	span {
		font-size: 20px;
		font-weight: bolder;
	}
	#result{
		margin-top: 10px;
		color : red;
	}
	#urlConversion{
		margin-left: 20px;
	}
</style>

<script type="text/javascript">
	$(document).ready(function(){
		$("#urlConversion").click(function(e){
			
			jQuery.ajax({
				async : false, 
				url : '/kakaopay/shorteningService.jsp',
				type : 'POST',
				dataType : 'json',
				data : {
					url : $("#url").val()
				},
				success : function(data) {
					$("#result").empty();
					$("#result").append(data.returnUrl);
				},
				error : function() {
					alert("error");
				}
			});
		});
	});
</script>
</head>
<body>
	<div class="center">
		<div><input type="text" id="url" value="https://en.wikipedia.org/wiki/URL_shortening"><span id="urlConversion" >변환</span></div>
		<div id="result"></div>
	</div>
</body>
</html>