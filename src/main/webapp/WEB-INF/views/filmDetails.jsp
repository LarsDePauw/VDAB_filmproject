<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <title>Details</title>
</head>

<body>
<div class="container">
    <h1>${film.title}</h1>
</div>

<div class="container">
    <div class="header">
        <h2>Trailer</h2>
    </div>

    <div class="responsive-video">
        <iframe src="${film.trailerUrl}"></iframe>
    </div>
    .


    <style>
        .responsive-video {
            position: relative;
            padding-bottom: 56.25%;
            padding-top: 60px;
            overflow: hidden;
        }

        .responsive-video iframe,
        .responsive-video object,
        .responsive-video embed {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }
    </style>
</div>

<div class="container">
    <h2>Summary</h2>
    ${film.summary}
</div>


</body>
</html>
