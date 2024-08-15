<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Test Results</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/style.css'/>"/>
</head>
<body>
    <div class="container">
        <h1>Test Results</h1>

        <form action="${pageContext.request.contextPath}/testSelect" method="get">
            <button type="submit" class="return-button">Back to Test</button>
        </form>

        <br>

        <c:if test="${not empty testResult}">
            <h2>Test Results for Exam ID: ${testResult.examId}</h2>
            <p><strong>Exam Name:</strong> ${testResult.examName}</p>
            <p><strong>Score:</strong> ${testResult.score}</p>
            <p><strong>Correct Answers:</strong> ${testResult.correctAnswers}</p>
            <p><strong>Total Questions:</strong> ${testResult.totalQuestions}</p>
        </c:if>
       

    </div>
</body>
</html>
