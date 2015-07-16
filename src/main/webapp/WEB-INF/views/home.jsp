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
<style type="text/css">

    body {
        background-image: url("http://www.desktopwallpaperhd.net/wallpapers/8/b/background-images-wallpaper-colors-artistic-81867.jpg");
    }
    h1, h2, h3{
        color: darkcyan;
    }
</style>
<body>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="/active"><a href="home"><span class=" glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li>
                <li><a href="/films"> <span class="glyphicon glyphicon-film" aria-hidden="true"></span> Films</a></li>
                <li><a href="/actors" class="active"><span class=" glyphicon glyphicon-user" aria-hidden="true"></span> Actors</a></li>
            </ul>
        </div>
    </div>
</nav>


<div class="container">
    <h1>Welcome to the Ripoff Internet Movie Database! (RIMDB)</h1>
</div>
<div class="container column-header">

    <br>
    <h3>Feel free to take a look at our <a href="/films">filmcollection</a></h3>,
    <br>
    <h3>or explore some of the actors in the <a href="/actors">actorcollection</a></h3>.
</div>


</body>
</html>
