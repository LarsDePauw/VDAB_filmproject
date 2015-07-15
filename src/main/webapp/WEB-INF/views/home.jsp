<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <title>RIMDB</title>
</head>
<body>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="home"><span class=" glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li>
                <li><a href="films"> <span class="glyphicon glyphicon-film" aria-hidden="true"></span> Films</a></li>
                <li><a href="actors" class="active"><span class=" glyphicon glyphicon-user" aria-hidden="true"></span> Actors</a></li>
            </ul>
        </div>
    </div>
</nav>


<div class="container">
    <h1>Welcome to the Ripoff Internet Movie Database! (RIMDB)</h1>
</div>
<div class="container column-header">
    <h2>Here you can find a collection of:</h2> <br>

    <h1><a href="/films">Films</a></h1>
    <br>

    <h1><a href="/actors">Actors</a></h1>
</div>


</body>
</html>
