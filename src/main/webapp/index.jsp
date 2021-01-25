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


    <!-- scripts for leaflet maps -->
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.3/leaflet.css" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Leaflet.awesome-markers/2.0.2/leaflet.awesome-markers.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <!--this is new-->

    <script src="https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.3/leaflet.js"></script>
    <script src='https://api.tiles.mapbox.com/mapbox.js/v1.6.4/mapbox.js'></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Leaflet.awesome-markers/2.0.2/leaflet.awesome-markers.js"></script>


</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" id="title">
    <a class="navbar-brand">The Happy Hive Project</a>
</nav>

<section id="top">
    <p>The Happy Hive Project is a community centered endeavor to create pollinator gardens across the United States. Bee populations are decreasing across the world for a number of reasons,
        and if we do not do our part we will lose a staggering amount of biodiversity and put our food sources at risk. Luckily, when it comes to saving the bees a little
        help goes a long way. Planting some of bees favorite foods bolsters your communities resilience and increase bee population.</p>
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
        var gauge3 = loadLiquidFillGauge("fillgauge3", 37, config2);
        var config4 = liquidFillGaugeDefaultSettings();
        config4.circleColor = "#ea9d3e";
        config4.textColor = "#ea9d3e";
        config4.waveTextColor = "#d28d37";
        config4.waveColor = "#eec33d";
        config4.circleThickness = 0.15;
        config4.textVertPosition = 0.2;
        config4.waveAnimateTime = 4000;
        config4.waveCount = 2.5;
        var gauge5 = loadLiquidFillGauge("fillgauge5", 90, config4);

        <!-- end of liquid gauges-->

    </script>

    <div id="gaugegraph"><img src="img/GaugeText.png" height="100%" width="100%"></div>
    <br>
    <!-- <p><strong>80%</strong> of the worlds plants require pollination by animals.</p> ---- 80% https://www.fs.fed.us/wildflowers/pollinators/importance.shtml#:~:text=More%20than%20150%20food%20crops,than%20%2410%20billion%20per%20year.-->
    <br>
    <!--<p><strong>37%</strong> of the 20,000 bee species on earth are in decline.</p>  ----- https://www.sierraclub.org/georgia/BEElieve -->
    <br>
    <!-- <p><strong>90%</strong> of bees in some regions have disappeared over the past 15 years.</p> ----  https://www.natgeokids.com/za/discover/animals/insects/honey-bees/ -->

    <div id="tempgraph"><img src="img/beechart4.svg" height="80%" width="100%"></div>


    <!-- start of pollinator explination-->
    <div class="container">
        <div class="row">
            <div class="col-sm-2">
    <div class="img__wrap">
        <img class="img__img" src="img/pollination1.svg" />
        <div class="img__description_layer">
            <p class="img__description">When visiting plants to gather pollen to turn into honey, bees become covered in a dusting of pollen.</p>
        </div>
    </div>
            </div>
                <div class="col-sm-2">
    <div class="img__wrap2">
        <img class="img__img" src="img/pollination2.svg" />
        <div class="img__description_layer">
            <p class="img__description">The bee will gather pollen from the plant to take back to hive. The bee will visit up to 500 of the same flower to collect enough pollen.
                The bee will store all the gathered pollen mostly on its legs and continue to gather more.</p>
        </div>
    </div>
                </div>
                    <div class="col-sm-2">
    <div class="img__wrap3">
        <img class="img__img" src="img/pollination3.svg" />
        <div class="img__description_layer">
            <p class="img__description">When the bee visits the next plant they leave behind pollen from the previous plant pollinating the new plant.</p>
        </div>
    </div>
                    </div>
                        <div class="col-sm-2">
    <div class="img__wrap4">
        <img class="img__img" src="img/pollination4.svg" />
        <div class="img__description_layer">
            <p class="img__description">When visiting plants to gather pollen to turn into honey, bees become covered in a dusting of pollen.</p>
        </div>
    </div>
                        </div>
                            <div class="col-sm-2">
    <div class="img__wrap5">
        <img class="img__img" src="img/pollination5.svg" />
        <div class="img__description_layer">
            <p class="img__description">Once the bee has procured enough pollen, it returns to its hive where the pollen will be turned into honey.</p>
        </div>
    </div>
    </div>

            <div class="col-sm-2">
                <div class="img__wrap6">
                    <img class="img__img" src="img/pollination1.svg" />
                    <div class="img__description_layer">
                        <p class="img__description">After depositing the pollen in the hive the bee will start the process over visiting over 5000 flowers in a day.</p>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- https://stackoverflow.com/questions/14263594/how-to-show-text-on-image-when-hovering     found here   -->

    <!-- end of pollinator explination-->

    <!-- start of plant calendar -->
    <p>Understanding how bees are struggling to find resources and how pollination works leads us to the conclusion that the best way to help bees thrive is to plant
        a pollinator garden. Knowing that bees must visit up to 500 of the same type of flower per trip help us narrow down the plants that would be most beneficial.
        Ground covers like clover or trees provide ample pollen for bees to work quickly and effectively. That said knowing what types of plant work best for your
        climate, house type, and in each season can be difficult. Providing food for bees year-round even when they are not particularly active is essential as most
        bee keeps lose most of their colony?s during the winter months. This calendar shows gardeners what plants can grow year-round so long as they are planted in
        the right climate zone. </p>

    <div id="calendar"><img src="img/calendar2.png" height="50%" width="50%"></div>

    <!--  USDA zones map start -->

    <div id="map"></div>

    <script type="text/javascript">
        var mapboxTiles = L.tileLayer('http://{s}.basemaps.cartocdn.com/light_all/{z}/{x}/{y}.png', {
            attribution: '<a href="http://www.mapbox.com/about/maps/" target="_blank">Terms &amp; Feedback</a>'
        });

        var USDAmap = L.map('map')
            .addLayer(mapboxTiles)
            .setView([39.57987951459858, -97.68086206250001], 5);

        function getColor(d) {
            if (d >= 10 ) {
                return '#e5f5e0'
            } else if (d >= 9) {
                return  '#c7e9c0'
            } else if (d >= 8) {
                return  '#a1d99b'
            } else if (d >= 7) {
                return  '#74c476';
            } else if (d >= 6) {
                return  '#41ab5d';
            } else if (d >= 5) {
                return  '#238b45';
            } else if (d >= 4) {
                return '#006d2c';
            } else if (d >= 3) {
                return  '#00441b';
            } else if (d >= 2) {
                return  '#00441b';
            } else {
                return   '#f7fcf5';
            }

        }

        $.ajax({
            dataType: "json",
            url: "hdzones.geo.json",
            success: function(data) {
                $(data.features).each(function(key, data) {
                    var geoJson = L.geoJson(data, {
                        onEachFeature: function(feature, layer) {
                            layer.setStyle({fillColor: getColor(feature.properties.Id), color: 'white', fillOpacity: 0.7});
                            layer.on('mouseover', function() {
                                info.update(feature.properties);
                            })
                            layer.on('mouseout', function() {
                                info.update();
                            })
                        }

                    }).addTo(USDAmap);

                }).error(function() {});
            }

        });
        //https://github.com/kgjenkins/ophz - usda geojson in full
        //https://github.com/calvinmetcalf/leaflet-ajax - ajax method used
        //https://leafletjs.com/examples/choropleth/   popup & styling method
        var info = L.control();

        info.onAdd = function (map) {
            this._div = L.DomUtil.create('div', 'info'); // create a div with a class "info"
            this.update();
            return this._div;
        };

        // method that we will use to update the control based on feature properties passed
        info.update = function (props) {
            this._div.innerHTML = '<h4>Pollinator Plant Recommendations</h4>' +  (props ?
                '<b>' + 'USDA Zone ' + props.Id + '</b><br />' +
                '<b>Trees: </b>' + props.Trees + '</b><br />' +
                '<b>Flowers: </b>' + props.Flowers + '</b><br />' +
                '<b>Herbs: </b>' + props.Herbs + '</b><br />' +
                '<b>Shrubs: </b>' + props.Shrubs
                : 'Hover over a climate zone');
        };

        info.addTo(USDAmap);
    </script>


    <!--  USDA zones map end -->

    <!-- end of plant calendar -->
    <!-- hyperlinked images-->
    <p>To learn more about pollinator gardens and how to create bee habitats follow the resources below.</p>
    <br>
    <br>
    <a href="https://www.pollinator.org/guides"> <img src="img/pollinatorpartnership.png" height="100px" width="200px"></img></a>
    <a <img src="img/honeybutton1.svg" height="200px" width="200px"></img></a>
    <a href="https://www.bermondseystreetbees.co.uk/planting-for-pollinators-green-offset/"> <img src="img/ref1.png" height="200px" width="200px"></img></a>
    <a <img src="img/honeybutton1.svg" height="200px" width="200px"></img></a>
    <a href="http://www.greengardenbuzz.com/good-bee-trees"> <img src="img/greengarden.png" height="200px" width="200px"></img></a>
    <a <img src="img/honeybutton1.svg" height="200px" width="200px"></img></a>
    <a href="https://beeinformed.org/citizen-science/loss-and-management-survey/"> <img src="img/beeinformed.png" height="150px" width="150px"></img></a>
    <!-- end of hyperlinked images-->

</section>
<!--     Footer       -->
<footer>

    <div id="footer"><img src="img/beeloop3.gif" height="80%" width="100%"></div> <h3 id="authors">Created by <a class="link" href=https://vagabondmap.com target="_blank"> Laura K. Smith</a>

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