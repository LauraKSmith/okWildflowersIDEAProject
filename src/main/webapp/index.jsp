<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Web Project</title>

  <!-- Custom styles -->
    <!-- Custom styles -->
  <link rel="stylesheet" href="css/style.css">

  <!-- jQuery -->
  <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
  <script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

  <!-- Bootstrap -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <!-- Bootstrap Date-Picker Plugin -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

  <!-- Google maps API -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA5qBRmbd8HkhuQFbY4bL9tC0Nae7qMJkU&libraries=geometry,places">
  </script>

    <!-- Custom font -->
    <link href="https://fonts.googleapis.com/css2?family=Quicksand&family=Amatic+SC&family=Satisfy&display=swap" rel="stylesheet">

    <!-- Custom styles -->
    <link rel="stylesheet" href="css/style.css">


</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" id="title">
    <a class="navbar-brand">The Happy Hive Project</a>
</nav>

<div class="container-fluid">
    <div class="row">
        <div class="sidebar col-xs-3">

            <!-- Tab Navis-->
            <ul class="nav nav-tabs">
                <li class="active"><a href="#welcome" data-toggle="tab">Welcome!</a></li>
                <li><a href="#create_observation" data-toggle="tab">Submit</a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content ">
                <div class="tab-pane active" id="welcome">

                    <div id="welcomeText"><img src="img/text4.png" height="100%" width="100%"></div>
                    <div id="welcomeText"><img src="img/beehive.svg" height="100%" width="100%"></div>


                </div>
              

    </div>
        <div id="map-canvas" class="col-xs-9"></div>
</div>

</div>

<!--     Footer       -->
<footer class="footer"><h3 id="authors">Created by <a class="link" href=https://vagabondmap.com target="_blank"> Laura K. Smith</a></footer>

<script src="js/loadformOK.js"></script>
<script src="js/loadmapOK.js"></script>
<script src="js/main.js"></script>

</body>
</html>

<!--
turn your project into a maven project: https://www.youtube.com/watch?v=s-nXWFQMXY0
connect heroku to postgres: https://www.youtube.com/watch?v=f76zBj_M5JY

-->