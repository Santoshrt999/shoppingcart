<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/static/css/style.css" />" rel="stylesheet">
<title>Insert title here</title>
<script type="text/javascript">

var xmlHttpRequest; //global variable
function initialize(){

	if(window.XMLHttpRequest){
		xmlHttpRequest = new XMLHttpRequest();
		
		}
	else{
		xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
			}
	return xmlHttpRequest;
}

function Display(){
	var ajax = initialize();
	//var data = document.getElementById("username");
	ajax.open("GET", "Payment.jsp", true);
	ajax.send();
	ajax.onreadystatechange = displayMessage;

	function displayMessage(){
if(ajax.readyState == 4 && ajax.status == 200){
	console.log(ajax.responseText);
	}
		}
}


</script>
</head>
<body>
Added to cart Successfully.
<div class="container">
<button type="button" onclick="Display()" class="btn btn-success">Proceed to CheckOut</button>  
</div>
</body>
</html>