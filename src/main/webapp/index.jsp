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

    <div id="bee divider"><img src="img/beedivider.png" height="100%" width="100%"></div>

    <p>The Happy Hive Project is a community centered endeavor to create pollinator gardens across the United States.
        Worldwide declines in bee populations affect the biodiversity of our food supply and puts food sources at risk.
        Fortunately, small conservation efforts can have deep and lasting impacts on the North American bee population and their resilience.</p>
    <br>
    <p>
        Please join The Happy Hive Project by increasing the biodiversity in your neighborhood! Let us know what you planted by using the map below.
        Plant by plant we can make sure bees have enough resources no matter where they are located.
    </p>

    <div id="bee divider"><img src="img/beedivider2.png" height="100%" width="100%"></div>
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


                              <select class="form-control" name="genus">
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
                    <div id="welcomeText"><img src="img/bee.svg" height="80%" width="80%"></div>


                </div>
                <!-- Create Observation Tab Panel -->
                <div class="tab-pane" id="create_observation">
                    <form id = "create_observation_form">
                        <div><label>Date of observation&nbsp</label><input class="form-control" placeholder="mm/dd/yyyy" name="date" autocomplete="off"></div>

                        <div>

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
    <p>While the declining bee population is a well-documented fact, the simple steps to combat this epidemic are not as commonly known.
        The Happy Hive Projects goal is to increase both pollinator friendly plants and the understanding of how and why these plants are essential.</p>
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

    <p>Bees come in many shapes and sizes; it is estimated that there may be as many as 30,000 varieties with more than 4,000 identified species in the North America.
        Despite the vast variety of bees, their populations are dwindling; nearly 40% of the identified bee populations are in demonstrative decline.
    </p>
<br>
    <p>
        From the large yellow and black Bumble Bee, which can grow to the size of a silver dollar, to the Sweat Bee, which can be as small as a grain of rice,
        each bee serves a specific function in maintaining our food supply chains and the biodiversity of our agriculture.  Eight out of ten of the worlds plants rely on some form of bee pollination.
    </p>


    <div id="divider"><img src="img/divider.png" height="100%" width="100%"></div>

    <br>
    <!-- <p><strong>80%</strong> of the worlds plants require pollination by animals.</p> ---- 80% https://www.fs.fed.us/wildflowers/pollinators/importance.shtml#:~:text=More%20than%20150%20food%20crops,than%20%2410%20billion%20per%20year.-->
    <br>
    <!--<p><strong>37%</strong> of the 20,000 bee species on earth are in decline.</p>  ----- https://www.sierraclub.org/georgia/BEElieve -->
    <br>
    <!-- <p><strong>90%</strong> of bees in some regions have disappeared over the past 15 years.</p> ----  https://www.natgeokids.com/za/discover/animals/insects/honey-bees/ -->

    <div id="tempgraph"><img src="img/beechart4.png" height="80%" width="100%"></div>

    <p>Preventing colony loss and providing support for bee colonies begins at the local level.  One of the largest contributing factors to the decline is a lack of resources.
        Homogenized grass yards and gardens, while popular in the US, do not allow many of the common resources that bees rely upon for survival.
        Yards are the 4th largest grown crop in the United States when calculated by land cover, leading to a direct impact on bee population.
        Weed killers, while making lawns easier to maintain eradicate common bee food sources like clover.
        Additionally, structured flower beds and raked leaves in the fall and winter remove hibernation homes for some pollinators. </p>
    <br>
    <p>Simple ways to combat bee decline are to rake leaves into composting pits or to provide supplemental food for the local bee population.
        A single bee may need to visit as many as 500 of the same type of bloom in a trip; ensuring that your yard contains plants,
        trees and shrubs that produce multiple blooms will assist in the bees goals. </p>

    <div id="divider"><img src="img/divider.png" height="100%" width="100%"></div>

    <div id="pollinationtitle"><img src="img/pollinationtitle.png" height="100%" width="100%"></div>

    <p>While the process of pollination is often complicated, learning how to help is not.
        The most commonly known bee, the Honey Bee actually only pollinates a small population of plant life.
        Learning what flowers attract and sustain your local populations of bees is essential in preserving food diversity in species like lemons, almonds and blueberries, just to name a few.
        Some of the most common and well known varieties of flower pollination can be found by interacting with the image below.</p>


    <!-- start of pollinator explination-->
    <div class="container">
        <div class="row">
            <div class="col-sm-2">
    <div class="img__wrap">
        <img class="img__img" src="img/pollination11.svg" />
        <div class="img__description_layer">
            <p class="img__description">When visiting plants to gather pollen to turn into honey, bees become covered in a dusting of pollen.</p>
        </div>
    </div>
            </div>
                <div class="col-sm-2">
    <div class="img__wrap2">
        <img class="img__img" src="img/pollination21.svg" />
        <div class="img__description_layer">
            <p class="img__description">The bee will gather pollen from the plant to take back to hive. The bee will store all the gathered pollen mostly on its legs and continue to gather more.</p>
        </div>
    </div>
                </div>
                    <div class="col-sm-2">
    <div class="img__wrap3">
        <img class="img__img" src="img/pollination31.svg" />
        <div class="img__description_layer">
            <p class="img__description">When the bee visits the next plant they leave behind pollen from the previous plant pollinating the new plant.</p>
        </div>
    </div>
                    </div>
                        <div class="col-sm-2">
    <div class="img__wrap4">
        <img class="img__img" src="img/pollination41.svg" />
        <div class="img__description_layer">
            <p class="img__description">After visiting each plant they add new pollen to themselves increasing the amount they are covered in.</p>
        </div>
    </div>
                        </div>
                            <div class="col-sm-2">
    <div class="img__wrap5">
        <img class="img__img" src="img/pollination51.svg" />
        <div class="img__description_layer">
            <p class="img__description">Once the bee has procured enough pollen, it returns to its hive where the pollen will be turned into honey.</p>
        </div>
    </div>
    </div>

            <div class="col-sm-2">
                <div class="img__wrap6">
                    <img class="img__img" src="img/pollination11.svg" />
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
                <p>
                    Regardless of whether you live in an urban or rural area, you can build a pollinator garden to help the bee population.
                    When planting a garden, whether it be a large garden or a small rooftop/window garden, understanding bees needs can play a critical role.
                </p>
        <br>
        <p>
            For example, Honey Bees are able to travel up to 5 miles to find food, and each trip a bee takes to collect pollen is for one type of plant.
            Planting with this in mind and ensuring that there are multiple blooms within an area can help bees make shorter trips.
            Trees that bloom are especially helpful as bees can often fill up at one blooming tree without additional travel; in fact,
            one blooming tree is equivalent to an entire football field of blooms.  When trees are not a viable option, look for plants that allow for condensed blooms within the allotted ground space.
        </p>
        <br>
    <p>When choosing flowers, there are a few things to consider.  First, bees are fond of the color purple, and less attracted to the color red;
        so boarge, clover, coneflowers and lavender are all good choices.  Additionally, accessibility is a key component.
        Look for plants that are easily accessible for the bees to become covered in pollen.  Avoid tubular blooms like lupines, trumpet flowers and petunias for bees,
        these are typically visited by hummingbirds. </p>
    <br>
    <p>Another consideration in a pollinator garden is ensuring that food is accessible year round.
        The most dangerous times for bee colonies are the winter months when food is scarce.
        By planting hardy blooms that can sustain your winter conditions, you can help ensure that bees are thriving all year long.
        This calendar shows what plants can grow year round, climate zones permitting.</p>
    <br>
    <p>Providing food for bees year-round even when they are not particularly active is essential as most bee keeps lose most of their colonys during the winter months.
        This calendar shows gardeners what plants can grow year-round so long as they are planted in the right climate zone.</p></div>

    <div id="divider"><img src="img/divider.png" height="100%" width="100%"></div>

    <!-- start of html5 calender used https://www.image-maps.com/-->
    <div id="bloomtitle"><img src="img/bloomtitle.png" height="100%" width="100%"></div>
    <p>Ensuring year round survival is key for bee colonies. The most dangerous times for bee colonies are the winter months when food is scarce.
        By planting hardy blooms that can sustain your winter conditions, you can help ensure that bees are thriving all year long.
        This calendar shows what plants can grow year round, climate zones permitting. </p>
    <br>
    <p>Each section of the calendar will link you to options for purchasing seeds to start your own pollinator garden. When purchasing seeds,
        be sure to take into account your region and climate to ensure maximum success.</p>


<div id="bloom"></div>
    <img id="Image-Maps-Com-image-maps-2021-02-23-010326" src="https://www.image-maps.com/m/private/0/qi6enifdeo9uueb5nvcte1k2pv_calendar9.png" border="0" width="774" height="749" orgWidth="774" orgHeight="749" usemap="#image-maps-2021-02-23-010326" alt="" />
    <map name="image-maps-2021-02-23-010326" id="ImageMapsCom-image-maps-2021-02-23-010326">
        <area shape="rect" coords="772,747,774,749" alt="Image Map" style="outline:none;" title="Image Map" href="http://www.image-maps.com/index.php?aff=mapped_users_0" />
        <area  alt="" title="Buy Aster" href="https://www.amazon.com/s?k=aster+seeds&i=lawngarden&ref=nb_sb_noss_1" shape="poly" coords="290,192,270,192,248,206,224,234,206,266,190,301,183,327,179,361,179,396,185,424,192,450,201,461,208,464,221,454,210,440,207,420,204,385,204,347,211,315,226,277,276,217,288,206" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Goldenrod" href="https://www.amazon.com/s?k=goldenrod+seeds&i=lawngarden&ref=nb_sb_noss_2" shape="poly" coords="240,160,254,153,266,152,266,168,255,180,228,204,207,224,192,247,184,268,176,290,169,315,166,338,161,367,142,376,133,358,131,326,144,284,160,248,192,202" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Silkgrass" href="https://www.amazon.com/Narrowleaf-Silkgrass-graminifolia-Seed-Native/dp/B00BSZHKKO" shape="poly" coords="117,352,117,360,108,367,96,368,89,346,90,309,104,277,112,251,125,225,136,207,158,183,176,161,192,149,210,133,223,123,241,114,250,117,250,129,232,137,209,156,182,184,158,216,140,255,124,295" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Yarrow" href="https://www.amazon.com/s?k=yarrow+plants&ref=nb_sb_noss" shape="poly" coords="55,155,36,183,27,204,18,235,12,252,7,278,0,308,0,329,0,350,3,365,15,368,23,351,29,304,33,271,43,238,57,222,61,201,72,184,75,169,68,156" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Bee Balm" href="https://www.amazon.com/s?k=bee+balm+seeds&i=lawngarden&ref=nb_sb_noss_2" shape="poly" coords="222,95,222,84,211,78,198,86,169,101,150,120,125,143,108,172,89,201,82,217,75,240,65,254,60,279,54,304,48,332,46,358,46,377,48,404,51,424,58,452,65,480,76,504,82,522,98,541,112,565,131,591,150,607,163,623,178,634,195,643,209,651,220,651,224,643,213,632,193,617,180,604,166,586,151,572,136,550,121,531,108,512,97,488,89,468,82,443,75,417,73,388,72,363,73,335,77,308,85,276,97,243,112,209,132,179,161,146" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Milkweed" href="https://www.amazon.com/s?k=milk+weed+seeds&i=lawngarden&ref=nb_sb_noss_1" shape="poly" coords="542,687,554,686,566,689,564,704,554,716,510,733,470,746,432,747,400,749,383,748,361,747,336,747,310,745,278,744,250,737,213,724,188,713,166,704,137,686,119,667,96,648,81,629,63,613,51,593,45,580,42,565,52,556,68,560,78,577,96,596,110,608,128,626,150,642,176,665,206,684,242,699,271,712,305,723,338,726,382,729,424,726,460,720,501,707" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Coneflower" href="https://www.amazon.com/s?k=cone+flower+seeds&i=lawngarden&ref=nb_sb_noss_2" shape="poly" coords="189,483,176,482,175,497,180,512,207,541,234,560,264,584,292,596,317,608,354,611,395,618,426,616,465,609,496,600,509,591,512,583,511,570,500,568,481,578,452,589,413,592,375,597,334,591,295,579,252,552,214,518" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Lavender" href="https://www.amazon.com/s?k=lavender+seeds&i=lawngarden&ref=nb_sb_noss_1" shape="poly" coords="648,585,661,564,674,542,676,530,672,519,656,528,643,547,630,564,605,586,585,607,560,623,539,636,514,656,481,663,455,673,430,674,399,676,372,679,343,675,312,672,287,668,264,658,249,656,232,653,227,658,237,670,255,678,280,684,304,693,329,698,357,701,395,704,428,704,466,698,506,683,560,661" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Ox Eye Daisy" href="https://www.amazon.com/s?k=ox+eye+daisy+seeds&i=lawngarden&ref=nb_sb_noss_1" shape="poly" coords="620,555,635,539,644,521,645,504,634,502,623,506,612,521,594,541,584,556,554,579,529,600,501,614,471,621,436,632,397,639,365,638,324,632,292,623,264,616,240,600,228,586,205,569,183,541,157,512,141,482,136,465,128,444,123,414,113,382,110,369,95,368,93,387,98,409,104,439,114,469,125,499,141,526,160,552,200,594,239,620,288,645,353,657,391,663,447,656,512,637,569,600" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Borage" href="https://www.amazon.com/s?k=borage+seed&i=lawngarden&ref=nb_sb_noss_2" shape="poly" coords="583,280,575,271,566,269,558,274,560,293,567,320,572,344,575,384,568,419,558,449,539,481,526,496,503,514,477,531,447,546,422,552,390,554,360,552,331,544,303,534,278,519,259,502,243,487,228,471,222,467,214,474,218,490,232,511,255,526,272,544,296,552,315,563,344,570,368,578,395,577,425,576,453,568,488,552,518,541,544,511,569,480,584,452,593,419,603,387,601,339" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Primrose" href="https://www.amazon.com/s?k=primrose+seed&i=lawngarden&ref=nb_sb_noss_1" shape="poly" coords="576,670,570,686,584,695,609,683,654,641,709,588,730,539,751,490,754,449,770,392,771,358,770,307,761,272,753,236,738,213,725,194,716,184,698,184,698,204,705,232,714,259,721,291,728,321,733,366,735,408,731,450,709,504,687,549,649,602" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Pieris" href="https://www.amazon.com/s?k=pieris+seeds&ref=nb_sb_noss_2" shape="poly" coords="543,262,552,266,560,266,564,250,549,229,534,214,513,199,500,191,483,192,486,209,502,224,516,232,531,247" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Willow" href="https://www.amazon.com/s?k=willow+plants&ref=nb_sb_noss_1" shape="poly" coords="527,550,515,557,511,564,511,574,520,578,542,570,577,539,606,500,624,463,638,430,643,398,643,352,636,307,627,275,610,244,590,211,555,176,528,156,494,138,462,126,424,117,385,113,353,117,310,127,281,137,268,147,273,159,289,160,317,150,357,140,397,140,439,145,488,159,523,182,554,211,593,258,614,320,619,366,619,412,600,456,574,504" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Winter Honey Suckel" href="https://www.amazon.com/s?k=winter+honey+suckle+seeds&ref=nb_sb_noss_2" shape="poly" coords="656,308,659,339,662,362,676,369,691,360,694,325,679,294,666,258,656,224,635,200,604,173,600,154,574,131,535,110,508,95,475,80,425,70,394,70,381,85,398,100,433,101,464,109,509,119,552,143,589,182,629,229" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Monkshood" href="https://www.amazon.com/s?k=monks+hood+seeds&ref=nb_sb_noss_2" shape="poly" coords="636,176,654,196,666,191,666,180,650,159,636,138,608,114,577,92,552,73,518,54,486,43,456,33,414,28,384,28,386,47,430,55,468,60,519,79,563,103,602,137" style="outline:none;" target="_self"     />
        <area  alt="" title="Buy Winter Heather" href="https://www.amazon.com/s?k=winter+heather+seeds&ref=nb_sb_noss" shape="poly" coords="676,168,687,181,703,182,707,155,696,136,648,87,630,67,591,32,563,24,538,33,550,57,581,73,621,98" style="outline:none;" target="_self"     />
    </map>
    <br>
    <br>
    <br>


    <!--  USDA zones map start -->

    <div id="divider"><img src="img/divider.png" height="100%" width="100%"></div>

    <div id="climatetitle"><img src="img/climatetitle.png" height="100%" width="100%"></div>

    <p>
        There are a number of factors that go into a successful garden; climate, weather patterns, elevation and other environmental
        factors all play a part.  While starting a garden, it can become intimidating or overwhelming to try to survey all these facets.  Fortunately,
        the USDA has incorporated many of these factors into their Plant Hardiness Zone Map.
    </p>
<br>
    <p>The map breaks the country into 13 zones to help gardeners decide on whether a plant is suitable and sustainable for their garden.
        Most plants and seeds sold in stores have labels that indicate what zones the seeds are best suited.  By utilizing the data provided,
        you can increase your success in even the smallest gardening efforts.</p>
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

    <div id="divider"><img src="img/divider.png" height="100%" width="100%"></div>

    <div id="knowbees"><img src="img/knowbees.png" height="100%" width="100%"></div>
   <div id="beeinfo"><img src="img/beeinfo.png" height="100%" width="100%"></div>

<!--
    <img id="Image-Maps-Com-image-maps-2021-04-22-225613" src="https://www.image-maps.com/m/private/0/lepqjb32tlc2aicp0sc225iqr4_beeinfo.png" border="0" width="100%" height="100%"  orgWidth="7868" orgHeight="3950" usemap="#image-maps-2021-04-22-225613" alt="" />
    <map name="image-maps-2021-04-22-225613" id="ImageMapsCom-image-maps-2021-04-22-225613">
        <area shape="rect" coords="7866,3948,7868,3950" alt="Image Map" style="outline:none;" title="Image Map" href="http://www.image-maps.com/index.php?aff=mapped_users_0" />
        <area  alt="" title="Bumble Bee" href="https://en.wikipedia.org/wiki/Bumblebee" shape="poly" coords="385,456,224,448,122,538,93,685,90,773,102,860,114,891,169,921,274,936,646,934,756,880,773,814,782,717,761,650,716,534,662,480,555,457" style="outline:none;" target="_self"     />
        <area  alt="" title="Honey Bee" href="https://en.wikipedia.org/wiki/Honey_bee" shape="poly" coords="316,985,201,973,140,1004,52,1272,64,1448,125,1540,306,1620,492,1594,746,1520,842,1341,866,1237,860,1054,827,965" style="outline:none;" target="_self"     />
        <area  alt="" title="Digger bee" href="https://en.wikipedia.org/wiki/Anthophorini" shape="poly" coords="605,1675.9998779296875,434,1662.9998779296875,311,1656.9998779296875,142,1679.9998779296875,105,1719.9998779296875,102,1950.9998779296875,108,2066.9998779296875,137,2106.9998779296875,179,2126.9998779296875,208,2133.9998779296875,330,2138.9998779296875,508,2142.9998779296875,645,2139.9998779296875,765,1968.9998779296875,761,1838.9998779296875,713,1738.9998779296875,687,1699.9998779296875" style="outline:none;" target="_self"     />
        <area  alt="" title="Carpenter Bee" href="https://en.wikipedia.org/wiki/Carpenter_bee" shape="poly" coords="708,2202,531,2191,380,2177,305,2175,234,2164,185,2171,161,2190,132,2228,130,2267,88,2546,86,2654,98,2722,192,2790,372,2775,748,2768,780,2709,858,2614,805,2209" style="outline:none;" target="_self"     />
        <area  alt="" title="Cuckoo Bee" href="https://en.wikipedia.org/wiki/Cuckoo_bee" shape="poly" coords="785,2817,667,2791,406,2810,254,2868,183,2949,174,3014,166,3232,164,3313,193,3345,737,3325,844,3101,831,2934" style="outline:none;" target="_self"     />
        <area  alt="" title="Orchid Bee" href="https://en.wikipedia.org/wiki/Euglossini" shape="poly" coords="734,3461,614,3397,389,3382,266,3391,207,3413,142,3580,132,3741,148,3842,159,3943,282,3940,575,3942,640,3929,739,3809,768,3728,787,3582,777,3531" style="outline:none;" target="_self"     />
        <area  alt="" title="Apidae" href="https://en.wikipedia.org/wiki/Apidae" shape="poly" coords="954,58,890,14,835,5,543,0,168,2,75,8,18,24,2,73,0,324,14,371,197,415,680,398,878,373,942,349,966,211" style="outline:none;" target="_self"     />
        <area  alt="" title="Magechilidae" href="https://en.wikipedia.org/wiki/Megachilidae" shape="poly" coords="2115.9999389648438,11,1908.9999389648438,0,1293.9999389648438,2,1181.9999389648438,14,1156.9999389648438,175,1144.9999389648438,317,1202.9999389648438,377,1516.9999389648438,407,1931.9999389648438,400,2079.9999389648438,368,2141.9999389648438,280,2143.9999389648438,111" style="outline:none;" target="_self"     />
        <area  alt="" title="Leaf Cutter" href="https://en.wikipedia.org/wiki/Megachile" shape="poly" coords="1994.9999389648438,651,1931.9999389648438,482,1760.9999389648438,477,1467.9999389648438,507,1345.9999389648438,548,1287.9999389648438,711,1275.9999389648438,811,1291.9999389648438,917,1370.9999389648438,982,1741.9999389648438,982,1984.9999389648438,971,2035.9999389648438,798" style="outline:none;" target="_self"     />
        <area  alt="" title="Mason Bee" href="https://en.wikipedia.org/wiki/Mason_bee" shape="poly" coords="1893.9999389648438,1166,1575.9999389648438,1071,1295.9999389648438,1093,1233.9999389648438,1191,1236.9999389648438,1467,1281.9999389648438,1538,1558.9999389648438,1564,1752.9999389648438,1547,1885.9999389648438,1482,1912.9999389648438,1317" style="outline:none;" target="_self"     />
        <area  alt="" title="Carder Bee" href="https://en.wikipedia.org/wiki/Bombus_pascuorum" shape="poly" coords="1746.9999389648438,1725,1553.9999389648438,1713,1352.9999389648438,1715,1282.9999389648438,1780,1274.9999389648438,1821,1241.9999389648438,1980,1253.9999389648438,2126,1324.9999389648438,2170,1548.9999389648438,2188,1773.9999389648438,2198,1849.9999389648438,2085,1911.9999389648438,1952,1946.9999389648438,1798,1844.9999389648438,1747" style="outline:none;" target="_self"     />
        <area  alt="" title="Stenotritidae" href="https://en.wikipedia.org/wiki/Stenotritidae" shape="poly" coords="6951,7,6886,99,6943,341,6967,363,7211,409,7463,406,7734,379,7816,358,7858,331,7865,264,7860,11" style="outline:none;" target="_self"     />
        <area  alt="" title="Melittidae Bee" href="https://en.wikipedia.org/wiki/Melittidae" shape="poly" coords="6437,460,6259,436,6085,426,5966,520,5920,731,5957,881,5974,931,6141,954,6525,973,6602,903,6620,683,6591,559,6533,494" style="outline:none;" target="_self"     />
        <area  alt="" title="Melittidae" href="https://en.wikipedia.org/wiki/Melittidae" shape="poly" coords="6757,3,5789,4,5768,202,5781,335,5880,380,5965,382,6164,397,6416,391,6562,378,6663,370,6715,365,6748,326,6764,210" style="outline:none;" target="_self"     />
        <area  alt="" title="Halictidae Bees" href="https://en.wikipedia.org/wiki/Halictidae" shape="poly" coords="3259.999755859375,5,2307.999755859375,0,2291.999755859375,53,2285.999755859375,124,2284.999755859375,203,2298.999755859375,254,2319.999755859375,311,2344.999755859375,351,2396.999755859375,368,2776.999755859375,396,2916.999755859375,386,3124.999755859375,380,3225.999755859375,365,3275.999755859375,334,3287.999755859375,139" style="outline:none;" target="_self"     />
        <area  alt="" title="Green Sweat Bee" href="https://en.wikipedia.org/wiki/Halictidae" shape="poly" coords="3137.999755859375,1577,3190.999755859375,1482,3152.999755859375,1235,3064.999755859375,1121,3036.999755859375,1077,2951.999755859375,1056,2795.999755859375,1040,2601.999755859375,1031,2521.999755859375,1060,2470.999755859375,1127,2439.999755859375,1468,2483.999755859375,1544" style="outline:none;" target="_self"     />
        <area  alt="" title="Sweat Bee" href="https://en.wikipedia.org/wiki/Lasioglossum" shape="poly" coords="2858.999755859375,952,3029.999755859375,894,3093.999755859375,757,3128.999755859375,578,3071.999755859375,514,2868.999755859375,483,2738.999755859375,435,2713.999755859375,433,2533.999755859375,450,2467.999755859375,576,2444.999755859375,740,2420.999755859375,902,2484.999755859375,937" style="outline:none;" target="_self"     />
        <area  alt="" title="Andrenidae " href="https://en.wikipedia.org/wiki/Andrenidae" shape="poly" coords="4368,407,4444,351,4458,184,4444,78,4414,28,4388,2,3469,6,3451,391,3449,483" style="outline:none;" target="_self"     />
        <area  alt="" title="Mining Bee" href="https://en.wikipedia.org/wiki/Andrena" shape="poly" coords="4222,522,4014,518,3793,521,3666,540,3603,684,3624,774,3631,943,3809,1025,4188,962,4252,728" style="outline:none;" target="_self"     />
        <area  alt="" title="Colletidae Bee" href="https://en.wikipedia.org/wiki/Colletidae" shape="poly" coords="5505,402,5582,359,5615,235,5598,5,4651,5,4635,95,4634,223,4645,328,4682,375" style="outline:none;" target="_self"     />
        <area  alt="" title="Masked Bee" href="https://en.wikipedia.org/wiki/Hylaeus_modestus" shape="poly" coords="5332,950,5429,885,5457,705,5445,525,5289,512,4841,565,4831,717,4832,852,4867,940" style="outline:none;" target="_self"     />
        <area  alt="" title="Cellophane Bee" href="https://en.wikipedia.org/wiki/Colletes_latitarsis" shape="poly" coords="5474,1565,5624,1485,5599,1253,5580,991,5388,1006,5063,1014,4887,1075,4858,1242,4858,1406,4871,1491,4924,1534" style="outline:none;" target="_self"     />
        <area  alt="" title="Plasterer Bee" href="https://en.wikipedia.org/wiki/Colletidae" shape="poly" coords="5318,2194,5580,2128,5586,1943,5488,1737,5074,1617,4930,1644,4877,1688,4855,1868,4873,2165" style="outline:none;" target="_self"     />
        <area  alt="" title="Stenotritidae" href="https://en.wikipedia.org/wiki/Stenotritidae" shape="poly" coords="7048,958,7863,953,7825,652,7620,521,7245,433,7014,554" style="outline:none;" target="_self"     />
    </map>   -->
    <p>
        When we talk about bees, it is easy to sterotype them.  Because the most commonly known bees are Honey Bees, it is easy to assume that all bees live in hives,
        serve a queen and produce honey.  In fact, most bees are more solitary.  It may even be difficult to visually separate some classes of bees from a wasp, fly or beetle.
    </p>
    <br>
    <p>In fact, there are seven families of bees.  Each species of bee is placed in one of these seven families.  Learn what the seven bee families are below.  </p>




    <div id="classactivity"></div>

    <a href="/img/activity.pdf" download>
        <img src="img/activity2.png" height="100%" width="100% alt="downloadButton">
    </a>
    <!-- hyperlinked images-->
    <div id="source"></div>
    <p>To learn more about pollinator gardens and how to create bee habitats explore the websites below.</p></div>
    <br>
    <br>
    <a href="https://www.beelab.umn.edu/"> <img src="img/hive.svg" height="200px" width="200px"></img></a>
    <a <img src="img/honeybutton1.svg" height="200px" width="200px"></img></a>
    <a href="https://www.pollinator.org/guides"> <img src="img/pollinatorpartnership.png" height="100px" width="200px"></img></a>
    <a <img src="img/honeybutton1.svg" height="200px" width="200px"></img></a>
    <a href="https://www.bermondseystreetbees.co.uk/planting-for-pollinators-green-offset/"> <img src="img/ref1.png" height="200px" width="200px"></img></a>
    <a <img src="img/honeybutton1.svg" height="200px" width="200px"></img></a>
    <a href="http://www.greengardenbuzz.com/good-bee-trees"> <img src="img/greengarden.png" height="200px" width="200px"></img></a>
    <a <img src="img/honeybutton1.svg" height="200px" width="200px"></img></a>
    <a href="https://beeinformed.org/citizen-science/loss-and-management-survey/"> <img src="img/beeinformed.png" height="150px" width="150px"></img></a>
    <a href="https://www.beesinyourbackyard.com/"> <img src="img/hive.svg" height="200px" width="200px"></img></a>
    <a <img src="img/honeybutton1.svg" height="200px" width="200px"></img></a>
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