<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <title>Editpage</title>
</head>
<body>

<div class="container">
    <h1>Edit or add a movie</h1>
</div>
<div class="information">

    <sf:form method="POST" modelAttribute="newPerson" cssClass="personForm">
        <table>
            <tr>
                <td><sf:label path="firstName">First name:</sf:label></td>
                <td><sf:input path="firstName"/></td>
            </tr>
            <tr>
                <td><sf:label path="lastName">Last name:</sf:label></td>
                <td><sf:input path="lastName"/></td>
            </tr>
            <tr>
                <td><sf:label path="age">Age:</sf:label></td>
                <td><sf:input path="age" /></td>
            </tr>
            <tr><td></td><td><input type="submit" value="Add" /></td></tr>
        </table>
    </sf:form>
</div>

</body>
</html>
