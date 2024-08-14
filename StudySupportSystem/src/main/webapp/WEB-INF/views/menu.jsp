<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- menu.jsp -->
<html>
<head>
    <title>Menu</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <div class="container">
        <h2>Menu (Administrator)</h2>
        <ul class="menu">
            <li><a href="${pageContext.request.contextPath}/testMenu">Test Management</a></li>
            <li><a href="${pageContext.request.contextPath}/userMenu">User Management</a></li>
            <li><a href="${pageContext.request.contextPath}/testStart">Test Implementation</a></li>
            <li><a href="${pageContext.request.contextPath}/testEdit">Change Account Information</a></li>
        </ul>
    </div>
</body>
</html>
