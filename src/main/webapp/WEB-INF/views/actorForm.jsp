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

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="home"><span class=" glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li>
                <li><a href="films"> <span class="glyphicon glyphicon-film" aria-hidden="true"></span> Films</a></li>
                <li><a href="actors"><span class=" glyphicon glyphicon-user" aria-hidden="true"></span> Actors</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <h1>Edit or add an actor</h1>
</div>
<br>

<div class="container">
    <sf:form commandName="actor" action="/createActor" method="post" cssClass="form-horizontal">
    <sf:hidden path="id"/>
    <div class="form-group">
        <label for="name" class="col-sm-2 control-label">Name</label>

        <div class="col-sm-10">
            <sf:input path="name" class="form-control"/>
        </div>
    </div>
    <div class="form-group">
        <label for="name" class="col-sm-2 control-label">Birthday</label>

        <div class="col-sm-10">
            <sf:input path="birthDay" class="form-control"/>
        </div>
    </div>
    <div class="form-group">
        <label for="name" class="col-sm-2 control-label">Gender</label>

        <div class="col-sm-10">
            <sf:select path="gender" items="${genders}" cssClass="form-control"/>
        </div>
    </div>
    <div class=" form-group">
        <label for="name" class="col-sm-2 control-label">bio</label>

        <div class="col-sm-10">
            <sf:textarea cols="145" rows="10" path="bio" cssclass="form-control"/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-12">
            <button type="submit" class="btn btn-info">SAVE</button>
        </div>
    </div>
</div>
</sf:form>


</div>

</body>
</html>











































