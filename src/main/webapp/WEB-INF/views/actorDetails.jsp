<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<link href='http://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<html lang="en">
<script type="text/css">

</script>

<head>
    <meta charset="UTF-8"/>
    <title>Details</title>
</head>
<style type="text/css">
    td, th {
        text-align: center;
    }

    body {
        background-image: url("http://cdn.desktopwallpapers4.me/wallpapers/abstract/1920x1080/1/3455-white-backround-1920x1080-abstract-wallpaper.jpg");
    }

    h1, h2, h3 {
        font-family: 'Montserrat', sans-serif;

        color: darkcyan;
    }
</style>

<body>

<c:if test="${actor.id == 3}">
    <script type="text/javascript">
        var counter = 0;

        function easterEgg() {
            counter = counter + 1;
            if (counter > 5) {
                window.open("https://www.youtube.com/watch?v=pDxn0Xfqkgw");
            }
        }
        ;
    </script>
</c:if>


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
    <h1>${actor.name}</h1>
</div>

<div class="container">

    <img src="${actor.profileImage}" class="img-responsive img-rounded" onClick=easterEgg()
         alt=${actor.name} width="304" height="236"/>

    <h2>Biography</h2>
    <h4>Info</h4>
    Gender: ${actor.gender}<br> Birthday: ${actor.birthDay}
    <br><br>${actor.bio}
</div>
</body>
</html>
