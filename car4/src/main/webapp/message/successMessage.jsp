<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/successMessage.css" rel="stylesheet">
<style>
.error-notice {
	  margin-left: 0px 0px; /* Making sure to keep some distance from all side */

}
	.oaerror {
	  width: 90%; /* Configure it fit in your design  */
	  margin: 0 auto; /* Centering Stuff */
	  background-color: #FFFFFF; /* Default background */
	  padding: 20px;
	  border: 1px solid #eee;
	  border-left-width: 5px;
	  border-radius: 3px;
	  margin: 0 auto;
	  font-family: 'Open Sans', sans-serif;
	  font-size: 16px;
	}
	

	.info strong {
	  color: #5bc0de;
	}

	.success {
	  border-left-color: #2b542c;
	  background-color: rgba(43, 84, 44, 0.1);
	}

	.success strong {
	  color: #2b542c;
	}
</style>

</head>
<body onload="setTimeout('window.close()', 5000*2);">
<form name="form"  accept-charset="UTF-8" action="listMessage.do"  method="post">
	<div class="container">
		<div class="row">
			<div class="error-notice">
	          <div class="oaerror success" style="width:370px;height:200px;">
	            <strong><h1>Success!</h1></strong>  메세지가 성공적으로 발송되었습니다.
	            <button class="btn btn-info" type="button" onclick="window.close()">확인</button>
				<button class="btn btn-info" type="submit">내 쪽지함 보기</button>
	          </div>
	        </div>
		</div>
	</div>
</form>
</body>
</html>