<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<link href='http://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <title>Editpage</title>
</head>
<style type="text/css">
    td, th {
        text-align: center;
    }

    body {
        background-image: url("http://www.desktopwallpaperhd.net/wallpapers/7/d/nature-images-wallpaper-other-artistic-78653.jpg");
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
                <li><a href="/films"> <span class="glyphicon glyphicon-film" aria-hidden="true"></span> Films</a></li>
                <li><a href="/actors" class="active"><span class=" glyphicon glyphicon-user" aria-hidden="true"></span>
                    Actors</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <h1>Edit or add a movie</h1>
</div>

<div class="container">
    <sf:form commandName="film" action="/createFilm" method="post" cssClass="form-horizontal">
        <sf:hidden path="id"/>
        <div class="form-group">
            <label for="title" class="col-sm-2 control-label">Title</label>

            <div class="col-sm-10">
                <sf:input path="title" class="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label for="title" class="col-sm-2 control-label">Director</label>

            <div class="col-sm-10">
                <sf:input path="director" class="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label for="title" class="col-sm-2 control-label">Genre</label>

            <div class="col-sm-10">
                <sf:select path="genre" items="${genres}" cssClass="form-control"/>
            </div>
        </div>
        <div class=" form-group">
            <label for="title" class="col-sm-2 control-label">Length</label>

            <div class="col-sm-10">
                <sf:input path="duration" class="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label for="title" class="col-sm-2 control-label">Summary</label>

            <div class="col-sm-10">
                <sf:textarea cols="145" rows="5" path="summary" cssclass="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label for="title" class="col-sm-2 control-label">Trailer url</label>

            <div class="col-sm-10">
                <sf:textarea cols="145" rows="1" path="trailerUrl" cssclass="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label for="title" class="col-sm-2 control-label">Poster</label>

            <div class="col-sm-10">
                <sf:textarea cols="145" rows="1" path="image" cssclass="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-12">
                <button type="submit" class="btn btn-info">SAVE</button>
            </div>
        </div>
    </sf:form>


</div>

</body>
</html>











































