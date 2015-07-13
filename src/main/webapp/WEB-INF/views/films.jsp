<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Films</title>
</head>
<body>
<h1>This is a list of all films</h1>

${filmList}$

<div class="container">
    <table>
        <tr class=table-row-cell>
            <th>Id</th>
            <th>Title</th>
        </tr>
        <c:forEach items="${filmList}" var="film">
            <tr>
                <td>
                <c:out value="${film.id}"/>
                <td>
                <td>
                <c:out value="${film.title}"/>
                <td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
