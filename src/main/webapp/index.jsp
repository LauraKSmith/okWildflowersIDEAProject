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
                                <option value='Clover'>Clover</option>
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
    <div id="resources">
    <p>Understanding how bees are struggling to find resources and how pollination works leads us to the conclusion that the best way to help bees thrive is to plant
        a pollinator garden. Knowing that bees must visit up to 500 of the same type of flower per trip help us narrow down the plants that would be most beneficial.
        Ground covers like clover or trees provide ample pollen for bees to work quickly and effectively. That said knowing what types of plant work best for your
        climate, house type, and in each season can be difficult. Providing food for bees year-round even when they are not particularly active is essential as most
        bee keeps lose most of their colony?s during the winter months. This calendar shows gardeners what plants can grow year-round so long as they are planted in
        the right climate zone. </p></div>

   <div id="calendar"><img src="img/calender7.png" height="100%" width="100%"></div>

    <!-- start of html5 calender-->

    <img id="Image-Maps-Com-image-maps-2021-02-22-223407" src="https://www.image-maps.com/m/private/0/qi6enifdeo9uueb5nvcte1k2pv_calendar6.png" border="0" width="2075" height="2009" orgWidth="2075" orgHeight="2009" usemap="#image-maps-2021-02-22-223407" alt="" />
    <map name="image-maps-2021-02-22-223407" id="ImageMapsCom-image-maps-2021-02-22-223407">
        <area shape="rect" coords="2073,2007,2075,2009" alt="Image Map" style="outline:none;" title="Image Map" href="http://www.image-maps.com/index.php?aff=mapped_users_0" />
        <area  alt="" title="Buy Winter Heather" href="https://www.amazon.com/s?k=winter+heather+seeds&ref=nb_sb_noss" shape="poly" coords="1522,86,1498,81,1481,91,1482,124,1492,148,1564,193,1610,225,1628,239,1655,262,1746,348,1791,399,1820,447,1849,474,1872,481,1888,470,1894,448,1891,420,1732,234,2013,241" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Monkshood" href="https://www.amazon.com/s?k=monks+hood+seeds&ref=nb_sb_noss_2" shape="poly" coords="1246,94,1180,83,1119,73,1076,73,1053,80,1046,98,1046,116,1055,128,1136,140,1287,175,1403,215,1484,258,1559,317,1624,366,1698,447,1741,512,1760,521,1783,522,1800,502,1802,479,1727,388,1645,307,1505,204,1381,135" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Winter Honey Suckle" href="https://www.amazon.com/s?k=winter+honey+suckle+seeds&ref=nb_sb_noss_2" shape="poly" coords="1078,182,1046,182,1030,198,1027,225,1047,240,1083,245,1123,250,1178,256,1256,276,1318,295,1380,324,1422,351,1476,387,1512,412,1557,456,1614,514,1668,591,1711,663,1739,747,1758,805,1772,867,1786,936,1786,985,1810,1004,1832,1000,1848,966,1848,916,1825,778,1777,650,1705,515,1577,383,1488,316,1359,245,1202,198" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Yarrow" href="https://www.amazon.com/s?k=yarrow+plants&ref=nb_sb_noss" shape="poly" coords="119,453,139,430,165,424,187,425,195,450,190,475,178,504,164,529,155,549,140,587,106,664,88,729,65,850,56,930,57,984,31,1003,0,981,0,948,0,822,31,661" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Goldenrod" href="https://www.amazon.com/s?k=goldenrod+seeds&i=lawngarden&ref=nb_sb_noss_2" shape="poly" coords="679,488,714,462,721,447,716,423,694,414,678,415,660,425,590,481,516,558,467,631,434,697,406,769,385,852,374,921,371,970,377,994,396,1002,422,992,429,949,435,873,455,791,482,724,514,663,563,593,618,533" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Primrose" href="https://www.amazon.com/s?k=primrose+seed&i=lawngarden&ref=nb_sb_noss_1" shape="poly" coords="1964,556,1934,506,1898,496,1868,514,1868,548,1896,588,1930,684,1958,772,1982,888,1986,1002,1976,1132,1952,1268,1920,1342,1870,1450,1810,1542,1724,1650,1636,1738,1574,1782,1540,1810,1540,1838,1562,1862,1596,1864,1660,1814,1786,1718,1872,1612,1960,1472,2020,1324,2056,1144,2064,986,2042,782" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Milkweed" href="https://www.amazon.com/s?k=milk+weed+seeds&i=lawngarden&ref=nb_sb_noss_1" shape="poly" coords="1420,1974,1458,1949,1500,1901,1513,1865,1498,1841,1460,1849,1348,1894,1164,1945,1022,1957,909,1949,801,1928,681,1897,569,1856,509,1824,429,1773,364,1712,282,1640,238,1580,205,1549,177,1508,145,1497,113,1514,128,1562,182,1637,276,1748,370,1828,501,1901,612,1953,776,2001,980,2008,1082,2004" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Lavender" href="https://www.amazon.com/s?k=lavender+seeds&i=lawngarden&ref=nb_sb_noss_1" shape="poly" coords="612,1782.0000305175781,700,1824.0000305175781,890,1880.0000305175781,1098,1884.0000305175781,1250,1865.0000305175781,1398,1817.0000305175781,1565,1717.0000305175781,1645,1654.0000305175781,1721,1572.0000305175781,1805,1456.0000305175781,1818,1404.0000305175781,1793,1396.0000305175781,1774,1401.0000305175781,1744,1434.0000305175781,1689,1512.0000305175781,1610,1598.0000305175781,1529,1666.0000305175781,1410,1740.0000305175781,1301,1784.0000305175781,1168,1820.0000305175781,1002,1829.0000305175781,877,1813.0000305175781,765,1784.0000305175781,666,1748.0000305175781,629,1729.0000305175781,612,1741.0000305175781" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Willow" href="https://www.amazon.com/s?k=willow+plants&ref=nb_sb_noss_1" shape="poly" coords="709,393,709,410,718,428,744,440,778,426,834,401,890,381,960,369,1030,364,1104,365,1192,385,1262,401,1358,441,1406,480,1460,525,1524,590,1582,672,1620,744,1645,820,1661,902,1668,1000,1658,1089,1636,1173,1605,1250,1569,1318,1522,1380,1481,1428,1433,1466,1393,1500,1374,1508,1372,1538,1396,1560,1428,1542,1480,1493,1557,1424,1614,1345,1656,1265,1705,1150,1721,1054,1721,981,1716,881,1689,780,1646,670,1605,605,1554,541,1474,461,1370,385,1289,353,1209,325,1101,306,998,305,870,324" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy bee Balm" href="https://www.amazon.com/s?k=bee+balm+seeds&i=lawngarden&ref=nb_sb_noss_2" shape="poly" coords="608,238,576,261,532,306,449,372,372,461,301,562,249,657,214,758,193,850,185,953,190,1057,202,1150,229,1245,262,1326,298,1397,350,1474,408,1538,488,1614,573,1690,602,1714,606,1745,590,1764,562,1761,485,1712,373,1620,309,1549,260,1481,210,1381,158,1272,130,1125,118,1004,126,868,161,705,192,597,276,450,360,342,440,268,488,228,536,209,576,192,612,205" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Ox Eye Daisy" href="https://www.amazon.com/s?k=ox+eye+daisy+seeds&i=lawngarden&ref=nb_sb_noss_1" shape="poly" coords="1729,1350,1697,1350,1668,1388,1632,1432,1582,1474,1524,1538,1440,1594,1313,1658,1150,1704,1041,1713,981,1709,901,1698,800,1680,737,1649,656,1605,585,1545,518,1488,457,1410,396,1314,365,1236,328,1121,317,1053,314,1026,298,1001,281,996,261,996,256,1017,256,1076,310,1276,426,1480,477,1532,588,1632,718,1713,837,1748,1022,1784,1174,1768,1361,1717,1481,1649,1602,1561,1704,1441,1738,1369" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Coneflower" href="https://www.amazon.com/s?k=cone+flower+seeds&i=lawngarden&ref=nb_sb_noss_2" shape="poly" coords="518,1310.000015258789,488,1288.000015258789,464,1314.000015258789,462,1360.000015258789,514,1421.000015258789,640,1534.000015258789,772,1605.000015258789,956,1657.000015258789,1102,1665.000015258789,1246,1634.000015258789,1349,1593.000015258789,1374,1566.000015258789,1374,1548.000015258789,1362,1534.000015258789,1353,1533.000015258789,1317,1544.000015258789,1221,1577.000015258789,1093,1596.000015258789,969,1593.000015258789,844,1572.000015258789,746,1529.000015258789,652,1461.000015258789" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Borage" href="https://www.amazon.com/s?k=borage+seed&i=lawngarden&ref=nb_sb_noss_2" shape="poly" coords="1538,721.0000152587891,1509,718.0000152587891,1494,728.0000152587891,1508,801.0000152587891,1536,885.0000152587891,1549,1008.0000152587891,1533,1116.000015258789,1493,1217.000015258789,1437,1301.000015258789,1370,1372.000015258789,1280,1425.000015258789,1190,1470.000015258789,1050,1489.000015258789,962,1480.000015258789,873,1461.000015258789,790,1420.000015258789,729,1378.000015258789,680,1330.000015258789,640,1282.000015258789,610,1253.000015258789,585,1254.000015258789,569,1274.000015258789,578,1297.000015258789,626,1356.000015258789,700,1432.000015258789,800,1489.000015258789,876,1522.000015258789,990,1550.000015258789,1112,1542.000015258789,1234,1518.000015258789,1316,1482.000015258789,1406,1426.000015258789,1486,1334.000015258789,1566,1208.000015258789,1593,1110.000015258789,1614,958.0000152587891,1589,820.0000152587891" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Aster" href="https://www.amazon.com/s?k=aster+seeds&i=lawngarden&ref=nb_sb_noss_1" shape="poly" coords="777,528,778,548,765,570,721,598,649,680,598,750,578,808,557,862,542,970,542,1064,560,1118,578,1177,588,1216,580,1257,541,1253,509,1186,485,1082,476,934,498,825,536,732,610,629,690,553,752,512" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Silkgrass" href="https://www.amazon.com/Narrowleaf-Silkgrass-graminifolia-Seed-Native/dp/B00BSZHKKO" shape="poly" coords="321,913,316,968,302,980,274,985,256,965,252,933,268,829,296,721,334,622,397,529,457,449,520,388,593,329,641,305,664,313,670,337,649,361,601,382,526,458,461,536,396,634,341,752" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Pieris" href="https://www.amazon.com/s?k=pieris+seeds&ref=nb_sb_noss_2" shape="poly" coords="1356,517,1336,513,1312,518,1305,540,1324,560,1372,601,1417,641,1452,672,1469,706,1492,716,1514,700,1514,673,1438,580" style="outline:none;" target="_self"     />
    </map>

    <!-- <div align="center"; style="position: relative; padding-bottom: 99%; padding-top: 0; height: 0;"><iframe style="position: absolute;
     top: 0; left: 0; width: 50%; height: 50%; border-width:0px; overflow-y:hidden;" width="100%" height="100%" src="https://interactive-img.com/view?id=23832&iframe=true"></iframe></div> -->

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
    <div id="source"></div>
    <p>To learn more about pollinator gardens and how to create bee habitats follow the resources below.</p></div>
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