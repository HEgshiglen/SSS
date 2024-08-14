<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Test Change</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/style.css'/>"/>
</head>
<body>
    <div class="container">
        <h1>Test Information Edit</h1>

        <form action="${pageContext.request.contextPath}/updateExam" method="post">
            <label for="examId">Topic</label>
            <label for="examName">No.1</label>
            <label for="questionText">Question:</label>
            <input type="text" id="examName" name="examName" value="${exam.name}"/>

            <label for="questionText">Answer:</label>
            <input type="text" id="questionText" name="questionText" value="${exam.questionText}"/>

            <label for="answer">Explanation:</label>
            <input type="text" id="answer" name="answer" value="${exam.answer}"/>

         
            <button type="submit" name="action" value="delete" class="delete-button">OK</button>
        </form>

        <form action="${pageContext.request.contextPath}/return" method="get">
            <button type="submit" class="return-button">Return</button>
        </form>
    </div>
</body>
</html>
