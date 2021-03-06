<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<link href='http://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link rel="imageStyle" href="imageStyle.css" type="text/css">

<html lang="en">


<head>
    <meta charset="UTF-8"/>
    <title>Films</title>
</head>
<style type="text/css">
    td, th {
        text-align: center;
    }

    body {
        background-image: url("https://ironlungs.files.wordpress.com/2011/07/hau2-stage.jpg");
    }

    h1, h2, h3 {
        color: darkcyan;
        font-family: 'Montserrat', sans-serif;

    }

    table {
        background-color: aliceblue;
    }
</style>

<body>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="/home"><span class=" glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li>
                <li><a href="/films"> <span class="glyphicon glyphicon-film" aria-hidden="true"></span> Films</a></li>
                <li class="active"><a href="/actors" class="active"><span class=" glyphicon glyphicon-user"
                                                                          aria-hidden="true"></span> Actors</a></li>
            </ul>
        </div>
    </div>
</nav>


<div class="container">
    <h1>Actors</h1>
</div>

<div class="container">

    <style>
        td, th {
            text-align: center;
        }
    </style>

    <table class="table table-bordered table-condensed table-hover">
        <tr>
            <th bgcolor="#9acd32">Id</th>
            <th bgcolor="#9acd32">Name</th>
            <th bgcolor="#9acd32">Photo</th>
            <th bgcolor="#9acd32">Edit</th>
        </tr>
        <c:forEach items="${actorList}" var="actor">
            <tr>
                <td>${actor.id}</td>
                <td><a href="actors/details?id=${actor.id}">${actor.name}</a></td>
                <td><img src="${actor.profileImage}" class="img-thumbnail" alt="${actor.name}" width=50 height=50></td>
                <td><a href="actors/form?id=${actor.id}" class="btn info btn-sm"><span
                        class=" glyphicon glyphicon-wrench"></span></a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <a href="actors/form/">
        <button class="btn-succes btn-lg" style="display: block"><span class="glyphicon glyphicon-plus"
                                                                       aria-hidden="true"></span> Add an actor
        </button>

    </a>
</div>

</body>
</html>
