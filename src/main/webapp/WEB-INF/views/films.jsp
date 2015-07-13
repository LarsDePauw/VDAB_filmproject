<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <title>Films</title>
</head>
<body>
<div class="container">
    <h1>This is a list of all films</h1>
</div>

<div class="container">
    <table class="table table-striped table-bordered table-condensed">
        <tr>
            <th>Id</th>
            <th>Title</th>
        </tr>
        <c:forEach items="${filmList}" var="film">
            <tr>
                <td>
                    <c:out value="${film.id}"/>
                </td>
                <td>
                    <c:out value="${film.title}"/>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
