<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>

<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link href='http://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <meta charset="UTF-8"/>
    <title>Details</title>
</head>

<style type="text/css">
    td, th {
        text-align: center;
    }

    body { background-image: url("http://www.desktopwallpaperhd.net/wallpapers/7/d/nature-images-wallpaper-other-artistic-78653.jpg");
    }

    h1, h2, h3 {
        font-family: 'Montserrat', sans-serif;
        color: darkcyan;
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
                <li class="active"><a href="/films"> <span class="glyphicon glyphicon-film" aria-hidden="true"></span>
                    Films</a></li>
                <li><a href="/actors"><span class=" glyphicon glyphicon-user" aria-hidden="true"></span>
                    Actors</a></li>
            </ul>
        </div>
    </div>
</nav>

<jsp:useBean id="film" class="be.vdab.domain.Film" scope="request"/>
<div class="container">
    <h1>${film.title}</h1>
</div>
<div class="container">
    <div class="header">
        <h2>Trailer</h2>
    </div>
    <iframe width="560" height="315" src="${film.trailerUrl}" frameborder="0" allowfullscreen></iframe>
</div>
<div class="container">
    <h2>Summary</h2>
    ${film.summary}
</div>

<div class="container">
    <h2>Notable characters</h2>
    <table class="table table-bordered table-condensed table-hover">
        <th bgcolor="#9acd32" class="col-md-6">Character</th>
        <th bgcolor="#9acd32" class="col-md-6">Actor</th>

        <c:forEach var="character" items="${film.cast}">
            <tr>
                <td class="col-md-6">${character.characterName}</td>
                <td class="col-md-6"><a href="/actors/details?id=${character.actor.id}">${character.actor.name}</a></td>
            </tr>
        </c:forEach>
    </table>
</div>

<div class="container">
    <h2>Info</h2>
    Rating: ${film.rating}<br>
    Genre: ${film.genre}<br>
    Length: ${film.duration} min<br>
    Directed by ${film.director}<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>.
</div>
</body>
</html>
