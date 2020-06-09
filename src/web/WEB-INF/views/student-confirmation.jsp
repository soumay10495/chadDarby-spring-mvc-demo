<%--
  Created by IntelliJ IDEA.
  User: Soumay
  Date: 30-05-2020
  Time: 06:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Student confirmed</title>
</head>
<body>
Hello ${student.firstName} ${student.lastName} from ${student.country} with
language ${student.language}
<br><br>
Operating Systems :
<ul>
    <c:forEach var="operating" items="${student.operatingSystems}">
        <li>${operating}</li>
    </c:forEach>
</ul>
</body>
</html>
