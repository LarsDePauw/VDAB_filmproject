<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<p lang="en">

    <head>
        <meta charset="UTF-8"/>
        <title>Details</title>
    </head>


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
</div

<p>
<br>
<div class="container">
    <h2>Info</h2>
    Rating: ${film.rating}<br>
    Genre: ${film.genre}<br>
    Directed by ${film.director}<br>

</div>
</p>

</body>
</html>
