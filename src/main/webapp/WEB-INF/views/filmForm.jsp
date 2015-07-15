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

<div class="container">
    <sf:form commandName="film" action="/create" method="post" cssClass="form-horizontal">
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
                <sf:textarea  path="summary" cssclass="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label for="title" class="col-sm-2 control-label">Trailer url</label>

            <div class="col-sm-10">
                <sf:input path="trailerUrl" cssclass="form-control"/>
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











































