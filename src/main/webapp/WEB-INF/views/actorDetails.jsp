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
    <h1>${actor.name}</h1>
</div>

<div class="container">

    <img src="${actor.profileImage}" class="img-responsive img-rounded" alt=${actor.name} width="304" height="236"/>

    <h2>Biography</h2>
    <br>${actor.bio}
</div>

<div class="container">
    <h2>has played in</h2>
</div>
</body>
</html>
