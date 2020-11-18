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


<!-- liquid gauges -->
    <script src="https://d3js.org/d3.v3.min.js" language="JavaScript"></script>
    <script src="liquidFillGauge.js" language="JavaScript"></script>
    <style>
        .liquidFillGaugeText { font-family: Helvetica; font-weight: bold; }
    </style>

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

  <!-- created using https://favicomatic.com -->
    <link rel="apple-touch-icon-precomposed" sizes="57x57" href="img/apple-touch-icon-57x57.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/apple-touch-icon-114x114.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/apple-touch-icon-144x144.png" />
    <link rel="apple-touch-icon-precomposed" sizes="60x60" href="img/apple-touch-icon-60x60.png" />
    <link rel="apple-touch-icon-precomposed" sizes="120x120" href="img/apple-touch-icon-120x120.png" />
    <link rel="apple-touch-icon-precomposed" sizes="76x76" href="img/apple-touch-icon-76x76.png" />
    <link rel="apple-touch-icon-precomposed" sizes="152x152" href="img/apple-touch-icon-152x152.png" />
    <link rel="icon" type="image/png" href="img/favicon-196x196.png" sizes="196x196" />
    <link rel="icon" type="image/png" href="img/favicon-96x96.png" sizes="96x96" />
    <link rel="icon" type="image/png" href="img/favicon-32x32.png" sizes="32x32" />
    <link rel="icon" type="image/png" href="img/favicon-16x16.png" sizes="16x16" />
    <link rel="icon" type="image/png" href="img/favicon-128.png" sizes="128x128" />
    <meta name="application-name" content="The Happy Hive Project"/>
    <meta name="msapplication-TileColor" content="#FFFFFF" />
    <meta name="msapplication-TileImage" content="img/mstile-144x144.png" />
    <meta name="msapplication-square70x70logo" content="img/mstile-70x70.png" />
    <meta name="msapplication-square150x150logo" content="img/mstile-150x150.png" />
    <meta name="msapplication-wide310x150logo" content="img/mstile-310x150.png" />
    <meta name="msapplication-square310x310logo" content="img/mstile-310x310.png" />


</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" id="title">
    <a class="navbar-brand">The Happy Hive Project</a>
</nav>

<section id="top">
    <p>The Happy Hive Project is a community centered endeavor to create pollinator gardens across the United States. Colony collapse disorder is affecting bees everywhere,
        and if we do not do our part we will lose a staggering amount of biodiversity and put our food sources at risk. Luckily, when it comes to saving the bees a little
        help goes a long way. Planting some of bees favorite foods bolsters your communities resilience and prevents colony collapse.</p>
    <br>
    <p>
        Please join The Happy Hive Project by increasing the biodiveristy in your neighborhood! Let us know what you planted by using the map
        below. Plant by plant we can make sure bees have enough resources no matter where they are located.
    </p>
</section>



<section id="middle">
<div class="container-fluid">
    <div class="row">
        <div class="sidebar col-xs-3">

            <!-- Tab Navis-->
            <ul class="nav nav-tabs">
                <li class="active"><a href="#welcome" data-toggle="tab">      Welcome to the Happy Hive Community!     </a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content ">
                <div class="tab-pane active" id="welcome">
                    <form id = "create_observation_form">
                        <div><label>Date Planted&nbsp</label><input class="form-control" placeholder="mm/dd/yyyy" name="date" autocomplete="off"></div>

                        <div>

                            <label>Plant Type&nbsp</label>


                              <select class="form-control" name="type">
                                <option value=''>Select a plant type</option>
                                <option value='Shrub'>Shrub</option>
                                <option value='Flower'>Flower</option>
                                <option value='Tree'>Tree</option>
                                <option value='Ground Cover'>GroundCover</option>
                                <option value='Ivy'>Ivy</option>
                                <option value='Other'>Other</option>

                            </select>


                            <div><label>Plant Name&nbsp</label><input class="form-control" placeholder="Common name (required)" name="common_name" required></div>
                           <!-- <div><label>Scientific name&nbsp</label><input class="form-control" placeholder="Scientific name" name="scientific_name"></div> -->
                            <div><label>Habitat&nbsp</label><input class="form-control" id="habitat" placeholder="Where Is This Planted? (max 500 characters)" name="habitat" maxlength="500"></div>
                            <div><label>Recorded by&nbsp</label><input class="form-control" placeholder="Your name" name="recorded_by"></div>
                        </div>
                        <div><label>Address&nbsp</label>
                            <input class="form-control" id="autocomplete" placeholder="Address" >
                        </div>
                        <div class="button_div"><button type="submit" class="btn btn-info" id="report_submit_btn">Submit</button></div>
                    </form>
                    <br>
                    <br>
                    <div id="welcomeText"><img src="img/bee.svg" height="90%" width="90%"></div>


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
</section>


<section id="bottom">
    <p>Here is where I will add charts and graphs. I will also put an infographic here. I want a hexigon bar chart that looks like honey combs. If the DB doesnt swap out add a leaflet map of
    ecoregions and what to plant in each. toggle buttons for plant types ie trees, shrubs, flowers, ect. Also make an chart about the types and varity of plants that are reliant on bees. Create hover boxes
    for the icons that explain the pollination proccess. </p>
    <br>

    <!-- start of liquid gauges -->
    <svg id="fillgauge2" width="19%" height="200" onclick="gauge2.update(NewValue());"></svg>
    <svg id="fillgauge4" width="19%" height="200" onclick="gauge4.update(NewValue());"></svg>
    <svg id="fillgauge3" width="19%" height="200" onclick="gauge3.update(NewValue());"></svg>
    <svg id="fillgauge4" width="19%" height="200" onclick="gauge4.update(NewValue());"></svg>
    <svg id="fillgauge5" width="19%" height="200" onclick="gauge5.update(NewValue());"></svg>
    <script language="JavaScript">
        var config1 = liquidFillGaugeDefaultSettings();
        config1.circleColor = "#ea9d3e";
        config1.textColor = "#ea9d3e";
        config1.waveTextColor = "#d28d37";
        config1.waveColor = "#eec33d";
        config1.circleThickness = 0.15;
        config1.textVertPosition = 0.2;
        config1.waveAnimateTime = 3000;
        config1.waveCount = 2;
        var gauge2= loadLiquidFillGauge("fillgauge2", 80, config1);
        var config2 = liquidFillGaugeDefaultSettings();
        config2.circleColor = "#ea9d3e";
        config2.textColor = "#ea9d3e";
        config2.waveTextColor = "#d28d37";
        config2.waveColor = "#eec33d";
        config2.circleThickness = 0.15;
        config2.textVertPosition = 0.2;
        config2.waveAnimateTime = 5000;
        config2.waveCount = 2;
        var gauge3 = loadLiquidFillGauge("fillgauge3", 49, config2);
        var config4 = liquidFillGaugeDefaultSettings();
        config4.circleColor = "#ea9d3e";
        config4.textColor = "#ea9d3e";
        config4.waveTextColor = "#d28d37";
        config4.waveColor = "#eec33d";
        config4.circleThickness = 0.15;
        config4.textVertPosition = 0.2;
        config4.waveAnimateTime = 4000;
        config4.waveCount = 2.5;
        var gauge5 = loadLiquidFillGauge("fillgauge5", 60, config4);

        <!-- end of liquid gauges-->

    </script>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
        dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
        commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
        Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    <br>


    <!-- start of pollinator explination-->
    <div class="img__wrap">
        <img class="img__img" src="img/pollination1.svg" />
        <div class="img__description_layer">
            <p class="img__description">When visiting plants to gather pollen to turn into honey, bees become covered in a dusting of pollen.  .</p>
        </div>
        <img class="img__img" src="img/pollination2.svg" />
        <div class="img__description_layer">
            <p class="img__description">When visiting plants to gather pollen to turn into honey, bees become covered in a dusting of pollen.  .</p>
        </div>
        <img class="img__img" src="img/pollination3.svg" />
        <div class="img__description_layer">
            <p class="img__description">When visiting plants to gather pollen to turn into honey, bees become covered in a dusting of pollen.  .</p>
        </div>
        <img class="img__img" src="img/pollination4.svg" />
        <div class="img__description_layer">
            <p class="img__description">When visiting plants to gather pollen to turn into honey, bees become covered in a dusting of pollen.  .</p>
        </div>
        <img class="img__img" src="img/pollination5.svg" />
        <div class="img__description_layer">
            <p class="img__description">When visiting plants to gather pollen to turn into honey, bees become covered in a dusting of pollen.  .</p>
        </div>
    </div>
    <img src="img/pollination1.svg" height="150px" width="150px"></img></a>
    <img src="img/dashes1.svg" height="150px" width="150px"></img></a>
    <img src="img/pollination2.svg" height="150px" width="150px"></img></a>
    <img src="img/dashes2.svg" height="150px" width="150px"></img></a>
    <img src="img/pollination3.svg" height="150px" width="150px"></img></a>
    <img src="img/dashes3.svg" height="150px" width="150px"></img></a>
    <img src="img/pollination4.svg" height="150px" width="150px"></img></a>
    <img src="img/dashes4.svg" height="150px" width="150px"></img></a>
    <img src="img/pollination5.svg" height="150px" width="150px"></img></a>
    <!-- end of pollinator explination-->

    <!-- hyperlinked images-->
    <p>To learn more about pollinator gardens and how to create bee habitats follow the resources below. Saving the bees is a community effort and a little help goes a long way.
    These sources also helped to provide a broad understanding of the pollinators in order to create this website. </p>
    <br>
    <br>
    <a href="https://www.pollinator.org/guides"> <img src="img/hive.svg" height="200px" width="200px"></img></a>
    <a <img src="img/honeybutton1.svg" height="200px" width="200px"></img></a>
    <a href="https://www.bermondseystreetbees.co.uk/planting-for-pollinators-green-offset/"> <img src="img/ref1.png" height="200px" width="200px"></img></a>
    <a <img src="img/honeybutton1.svg" height="200px" width="200px"></img></a>
    <a href="https://www.facebook.com/"> <img src="img/hive.svg" height="200px" width="200px"></img></a>
    <a <img src="img/honeybutton1.svg" height="200px" width="200px"></img></a>
    <a href="https://www.amazon.com/"> <img src="img/hive.svg" height="200px" width="200px"></img></a>
    <!-- end of hyperlinked images-->

</section>
<!--     Footer       -->
<footer>

    <div id="footer"><img src="img/beedividerlong.svg" height="80%" width="80%"></div> <h3 id="authors">Created by <a class="link" href=https://vagabondmap.com target="_blank"> Laura K. Smith</a>

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