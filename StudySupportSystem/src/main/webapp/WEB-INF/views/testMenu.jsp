<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Test Management</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/style.css'/>"/>
</head>
<body>
    <div class="container">
        <h1>New Test Registration</h1>

        <form action="${pageContext.request.contextPath}/addExam" method="post">
            <label for="examName">Exam Name:</label>
            <input type="text" id="examName" name="examName"/><br>
            <button type="submit">Add Exam</button>
        </form>
        
        <br>
        
        <form action="${pageContext.request.contextPath}/editExam" method="post">
            <label for="examId">Edit Test:</label> <br>
            <label for="newExamName">New Exam Name:</label>
            <input type="text" id="newExamName" name="newExamName"/><br>
            <button type="submit">Update Exam</button>
            <button type="submit">Delete Exam</button>
        </form>
        
        <br>
        
        <form action="${pageContext.request.contextPath}/deleteExam" method="post">
            <button type="submit" class="return-button">Return</button>
        </form>
    </div>
</body>
</html>
