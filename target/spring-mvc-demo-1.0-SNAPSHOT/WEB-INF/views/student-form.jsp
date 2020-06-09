<%--
  Created by IntelliJ IDEA.
  User: Soumay
  Date: 30-05-2020
  Time: 06:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Student Registration Form</title>
</head>
<body>
<form:form action="processForm" modelAttribute="student">
    First Name : <form:input path="firstName"/>
    <br><br>
    Last Name : <form:input path="lastName"/>
    <br><br>
    Country : <form:select path="country">
                    <form:options items="${countries}"/>
       <!--         <form:options items="${student.countryOptions}"/>      -->
       <!--         <form:option value="India"/>
                    <form:option value="USA"/>
                    <form:option value="Canada"/>
                    <form:option value="Germany"/>          -->
                </form:select>
    <br><br>
    Favourite Language :
                Java<form:radiobutton path="language" value="Java"/>
                C++<form:radiobutton path="language" value="C++"/>
                Python<form:radiobutton path="language" value="Python"/>
                Go<form:radiobutton path="language" value="Go"/>
                Scala<form:radiobutton path="language" value="Scala"/>
    <br><br>
    Operating Systems :
                Windows<form:checkbox path="operatingSystems" value="Windows"/>
                MAC OS<form:checkbox path="operatingSystems" value="MAC OS"/>
                Linux<form:checkbox path="operatingSystems" value="Linux"/>
    <br><br>
    <input type="submit">
</form:form>
</body>
</html>
