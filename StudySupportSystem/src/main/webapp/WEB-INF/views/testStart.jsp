<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Test Execution</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/style.css'/>"/>
</head>
<body>
    <div class="container">
        <h1>Test Execution</h1>

        <form action="${pageContext.request.contextPath}/testResult" method="post">
            <input type="hidden" name="examId" value="${exam.id}"/>
            
            <label for="examName">Exam Name:</label>
            <input type="text" id="examName" name="examName" value="${exam.name}" readonly/><br>

            <!-- Assuming the test has a question and the user needs to provide an answer -->
            <label for="questionText">Question:</label>
            <input type="text" id="questionText" name="questionText" value="${exam.questionText}" readonly/><br>

            <label for="answer">Your Answer:</label>
            <input type="text" id="answer" name="answer"/><br>

            <button type="submit">Submit</button>
        </form>

        <!-- Back Button -->
        <form action="${pageContext.request.contextPath}/testSelect" method="get">
            <button type="submit" class="return-button">Back</button>
        </form>
    </div>
</body>
</html>
