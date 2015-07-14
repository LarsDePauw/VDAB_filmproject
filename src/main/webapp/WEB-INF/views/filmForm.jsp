<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <title>Editpage</title>
</head>
<body>

<div class="container">
    <h1>Edit or add a movie</h1>
</div>
<div class="information">

    <sf:form commandName="film" action="/create" method="post">
        <sf:hidden path="id"/>
        <div class="form-group">
            <label for="title" class="col-md-2">Title</label>
            <sf:input path="title" class="col-md-10"/>
        </div>
        <div class="form-group">
            <label for="title" class="col-md-2">Director</label>
            <sf:input path="director" class="col-md-10"/>
        </div>
        <div class="form-group">
            <label for="title" class="col-md-2">Genre</label>
            <sf:input path="genre" class="form-control col-md-10"/>
        </div>
        <div class="form-group">
            <label for="title" class="col-md-2">Length</label>
            <sf:input path="duration" class="form-control col-md-10"/>
        </div>
        <button type="submit" class="btn btn-danger">SAVE</button>
    </sf:form>


</div>

</body>
</html>
