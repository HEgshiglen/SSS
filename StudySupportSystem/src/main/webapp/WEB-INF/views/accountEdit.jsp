<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Account Information Change</title>
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
    <h2>Account Information Change</h2>

    <c:if test="${not empty errMsg}">
        <p class="error">${errMsg}</p>
    </c:if>

    <form:form action="updateAccount" method="post" modelAttribute="accountForm">
        <fieldset>
            <div>
                <label>ID:</label>
                <form:input path="userId" readonly="true" />
            </div>
            <div>
                <label>Name:</label>
                <form:input path="userName" />
                <form:errors path="userName" class="error" />
            </div>
            <div>
                <label>Password:</label>
                <form:password path="password" />
                <form:errors path="password" class="error" />
            </div>
            <div>
                <label>Password Re-entry:</label>
                <form:password path="passwordReentry" />
                <form:errors path="passwordReentry" class="error" />
            </div>
        </fieldset>
        <div>
            <input type="submit" value="Edit" />
            <a href="menu">Return to Menu</a>
        </div>
    </form:form>
</body>
</html>
