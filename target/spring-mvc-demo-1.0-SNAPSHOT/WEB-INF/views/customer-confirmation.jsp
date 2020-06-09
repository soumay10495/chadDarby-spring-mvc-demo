<%--
  Created by IntelliJ IDEA.
  User: Soumay
  Date: 05-06-2020
  Time: 08:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Confirmation</title>
</head>
<body>
    Hi ${customer.firstName} ${customer.lastName}
    <br><br>
    Free passes : ${customer.freePasses}
    <br><br>
    Postal Code : ${customer.postalCode}
    <br><br>
    Course Code : ${customer.courseCode}
</body>
</html>
