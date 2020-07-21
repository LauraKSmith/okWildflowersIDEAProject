<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>The Happy Hive Project</title>

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
            </ul>

            <!-- Tab panes -->
            <div class="tab-content ">
                <div class="tab-pane active" id="welcome">
                    <form id = "create_observation_form">
                        <div><label>Date of observation&nbsp</label><input class="form-control" placeholder="mm/dd/yyyy" name="date" autocomplete="off"></div>

                        <div>
                            <!--
                            <label>Type&nbsp</label>


                              <select class="form-control" name="type">
                                <option value=''>Select a plant type</option>
                                <option value='Herb'>Herb</option>
                                <option value='Flower'>Flower</option>
                                <option value='Tree'>Tree</option>
                                <option value='GroundCover'>GroundCover</option>
                                <option value='Other'>Other</option>

                            </select>

                             -->
                            <div><label>Common name&nbsp</label><input class="form-control" placeholder="Common name (required)" name="common_name" required></div>
                            <div><label>Scientific name&nbsp</label><input class="form-control" placeholder="Scientific name" name="scientific_name"></div>
                            <div><label>Habitat&nbsp</label><input class="form-control" id="habitat" placeholder="Description (max 500 characters)" name="habitat" maxlength="500"></div>
                            <div><label>Recorded by&nbsp</label><input class="form-control" placeholder="Your name" name="recorded_by"></div>
                        </div>
                        <div><label>Address&nbsp</label>
                            <input class="form-control" id="autocomplete" placeholder="Address" >
                        </div>
                        <div class="button_div"><button type="submit" class="btn btn-info" id="report_submit_btn">Submit</button></div>
                    </form>
                    <div id="welcomeText"><img src="img/bee.svg" height="30%" width="30%"></div>
                    <div id="welcomeText"><img src="img/bee.svg" height="30%" width="30%"></div>
                    <div id="welcomeText"><img src="img/bee.svg" height="30%" width="30%"></div>


                </div>
                <!-- Create Observation Tab Panel -->
                <div class="tab-pane" id="create_observation">
                    <form id = "create_observation_form">
                        <div><label>Date of observation&nbsp</label><input class="form-control" placeholder="mm/dd/yyyy" name="date" autocomplete="off"></div>

                        <div>
                            <!--
                            <label>Type&nbsp</label>


                              <select class="form-control" name="type">
                                <option value=''>Select a plant type</option>
                                <option value='Herb'>Herb</option>
                                <option value='Flower'>Flower</option>
                                <option value='Tree'>Tree</option>
                                <option value='GroundCover'>GroundCover</option>
                                <option value='Other'>Other</option>

                            </select>

                             -->
                            <div><label>Common name&nbsp</label><input class="form-control" placeholder="Common name (required)" name="common_name" required></div>
                            <div><label>Scientific name&nbsp</label><input class="form-control" placeholder="Scientific name" name="scientific_name"></div>
                            <div><label>Habitat&nbsp</label><input class="form-control" id="habitat" placeholder="Description (max 500 characters)" name="habitat" maxlength="500"></div>
                            <div><label>Recorded by&nbsp</label><input class="form-control" placeholder="Your name" name="recorded_by"></div>
                        </div>
                        <div><label>Address&nbsp</label>
                            <input class="form-control" id="autocomplete" placeholder="Address" >
                        </div>
                        <div class="button_div"><button type="submit" class="btn btn-info" id="report_submit_btn">Submit</button></div>
                    </form>
                    <div id="create_observation"><img src="img/bee.svg" height="100%" width="100%"></div>
                </div>

                <!-- Query Observation Tab Panel: dropdowns are populated by main.js -->
                <div class="tab-pane" id="query_observation">
                    <form id = "query_observation_form">


                    </form>
            </div>
        </div>



    </div>
        <div id="map-canvas" class="col-xs-9"></div>
</div>

</div>

<!--     Footer       -->
<footer>

    <div id="footer"><img src="img/beedivider.svg" height="50%" width="50%"></div>
    <h3 id="authors">Created by <a class="link" href=https://vagabondmap.com target="_blank"> Laura K. Smith</a>

</footer>

<script src="js/loadformOK.js"></script>
<script src="js/loadmapOK.js"></script>
<script src="js/main.js"></script>

</body>
</html>

<!--
turn your project into a maven project: https://www.youtube.com/watch?v=s-nXWFQMXY0
connect heroku to postgres: https://www.youtube.com/watch?v=f76zBj_M5JY

-->