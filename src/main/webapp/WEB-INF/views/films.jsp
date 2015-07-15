<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="imageStyle" href="imageStyle.css" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Films</title>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="home"><span class=" glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li>
                <li class="active"><a href="films"> <span class="glyphicon glyphicon-film" aria-hidden="true"></span> Films</a></li>
                <li><a href="actors" class="active"><span class=" glyphicon glyphicon-user" aria-hidden="true"></span> Actors</a></li>
            </ul>
        </div>
    </div>
</nav>



<div class="container">
    <h1>Films</h1>

            <style>
                td, th{
                    text-align: center;
                }
            </style>

    <table class="table table-striped table-bordered table-condensed">
        <tr>
            <th>Id</th>
            <th>Title</th>
            <th>Poster</th>
            <th>Options</th>
        </tr>
        <c:forEach items="${filmList}" var="film">
            <tr>
                <td>${film.id}</td>
                <td><a href="films/details?id=${film.id}">${film.title}</a></td>
                <td><img src="${film.image}" class="img-thumbnail" alt="${film.title}" width=50 height=50> </td>

                <td><a href="films/delete/${film.id}" class="btn btn-danger btn-sm"><span
                        class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>
                    <a href="films/form?id=${film.id}" class="btn info btn-sm"><span
                            class=" glyphicon glyphicon-wrench"></span></a>
                </td>

            </tr>
        </c:forEach>
    </table>
    <a href="films/form/">
        <button class="btn-succes btn-lg"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add a film
        </button>
    </a>
</div>

</body>
</body>
</html>