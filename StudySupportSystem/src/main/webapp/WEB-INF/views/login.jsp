<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- login.jsp -->
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <div class="container">
        <h2>Login</h2>
        <form action="${pageContext.request.contextPath}/login" method="post">
            <label for="id">ID:</label>
            <input type="text" id="id" name="id" required />
            <br />
            <label for="password">PASS:</label>
            <input type="password" id="password" name="password" required />
            <br />
            <input type="submit" value="Login" />
        </form>
        <c:if test="${not empty error}">
            <p class="error">${error}</p>
        </c:if>
    </div>
</body>
</html>

