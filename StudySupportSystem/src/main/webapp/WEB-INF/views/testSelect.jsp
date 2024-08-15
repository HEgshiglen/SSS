<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Test Selection</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/style.css'/>"/>
</head>
<body>
    <div class="container">
        <h1>Test Selection</h1>

        <form action="${pageContext.request.contextPath}/testResult" method="post">
           <ul class="menu">
            <li><a href="${pageContext.request.contextPath}/testStart?examId=1">No.1. Nemeh</a></li>
            <li><a href="${pageContext.request.contextPath}/testStart?examId=2">No.2. Urjih</a></li>
            <li><a href="${pageContext.request.contextPath}/testStart?examId=3">No.3. Ilerhiilel</a></li>
        </ul>
        </form>
		<form action="${pageContext.request.contextPath}/menu" method="get">
			<button type="submit">Back</button>
		</form>

	</div>
</body>
</html>
