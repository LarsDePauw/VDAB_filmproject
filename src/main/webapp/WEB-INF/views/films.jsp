<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <title>Films</title>
</head>

<div class="container">
    <h1>This is a list of all films</h1>
    <table class="table table-striped table-bordered table-condensed">
        <tr>
            <th>Id</th>
            <th>Title</th>
            <th></th>
        </tr>
        <c:forEach items="${filmList}" var="film">
            <tr>
                <td>${film.id}</td>
                <td><a href="films/details?id=${film.id}">${film.title}</a></td>

                <td><a href="films/delete/${film.id}" class="btn btn-danger btn-sm"><span
                        class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>
                    <a href="films/form?id=${film.id}" class="btn info btn-sm"><span class=" glyphicon glyphicon-wrench"></span></a>
                </td>

            </tr>
        </c:forEach>
    </table>
</div>
<div class="container">
    <a href="films/form/${film.id}"><button class="btn-succes btn-lg"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add a film </button></a>
</div>

</body>
</html>
