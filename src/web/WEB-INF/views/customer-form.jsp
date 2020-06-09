<%--
  Created by IntelliJ IDEA.
  User: Soumay
  Date: 05-06-2020
  Time: 07:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Customer Registration Form</title>
    <style>
        .error {
            color: red
        }
    </style>
</head>
<body>
<i>Fields marked with asterisk(*) are required</i>
<br><br>

<form:form action="processForm" modelAttribute="customer">
    First Name : <form:input path="firstName"/>
    <br><br>
    Last Name(*) : <form:input path="lastName"/>
    <form:errors path="lastName" cssClass="error"/>
    <br><br>
    Free passes : <form:input path="freePasses"/>
    <form:errors path="freePasses" cssClass="error"/>
    <br><br>
    Postal Code : <form:input path="postalCode"/>
    <form:errors path="postalCode" cssClass="error"/>
    <br><br>
    Course Code : <form:input path="courseCode"/>
    <form:errors path="courseCode" cssClass="error"/>
    <br><br>
    <input type="submit"/>
</form:form>
</body>
</html>

