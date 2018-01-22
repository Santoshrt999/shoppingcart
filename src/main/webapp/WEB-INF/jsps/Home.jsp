<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/static/css/style.css" />"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
	integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js"
	integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"
	integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"
	integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn"
	crossorigin="anonymous"></script>
<title>Insert title here</title>
<style type="text/css">

.topright {
    position: absolute;
    top: 8px;
    right: 16px;
    font-size: 18px;
}
.topright2 {
    position: absolute;
    top: 26px;
    right: 16px;
    font-size: 18px;
}
</style>
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

function process(){ //When declaring maken sure it is global variable.. and define responseTEXT in local variable.
	var ajax = initialize();
    var data = document.getElementById("username").value; //by name and by tag
	
	ajax.open("GET","Home.jsp?username=" + data, true); 
	ajax.send();
	ajax.onreadystatechange = displayMessage;

	function displayMessage(){

		
		 if (ajax.readyState == 4 && ajax.status == 200) {
		     console.log(ajax.responseText);
		     document.getElementById("container").innerHTML=ajax.responseText;
		    }
	}
	
}
	
</script>
</head>

<body>

	<center>
		<h3>Welcome to Shop On</h3>
	</center>
	<div class="container">
		<br></br>
		<%
			String username = request.getParameter("username");
			
		%>
		
	
		Hi,
		<text style="color: royalblue"> <%=username%> <br></text>
			<div class="jumbotron">
			<h2 class="display-2">Start Shopping</h2>
			<h4 class="display-4">Select the courses from below to access</h4>
			<img src="https://s3.amazonaws.com/shopping-buck/Java.jpg">
			<p class="lead">Java Programming Course</p>
			<div>
				<a href="Welcome.html">Add to Cart</a></br> <img
					src="https://s3.amazonaws.com/shopping-buck/web.jpg"
					class="img-responsive pull-right">
				<p class="lead">Web Programming Course</p>
				<a href="Welcome.html">Add to Cart</a></br>
			</div>
			<div class="topright">
				<a href="">Your Cart</a>
			</div>
			<div class="topright2">
				<a href="">Add to Wish List</a>
			</div>



		</div>
	</div>
		
		
	
		



		</div>
	</div>


</body>
</html>