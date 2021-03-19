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
    <p>When the subject of bee pollination comes up people often know bee populations are on the decline,
        however they do not know how that affects them in the real world or how to make a difference.
        The Happy Hive Projects goal is to increase pollinator friendly plants, however this can not be done
        effectively without an understanding of the how and the why of planting for pollinators.</p>
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

    <p>It is believed that 80% of plants in the world rely on bee pollination. With bee populations decreasing at the level they are, the worlds food supply is at risk for every human and animal.
        Bees come in many shapes, colors, and sizes. From the large yellow and black Bumble bee that can be as large as a silver dollar to the Sweat bee that is as small as a grain of rice bees are diverse.
        There are 20,000 known bee species, 4,000 of which are located in the United States. There are still new bees being identified, so often that its believed there might be as many as 30,000 bee varieties.
        Despite having so many varieties of bees 37% of the species are known to be in decline. Many of the species in decline are the ones we heavily rely on for survival.
        Of those bee species that at in decline it is believed that 90% of those bees have disappeared. The drastic loss and decrease of these bees has an impact on food cost, biodiversity, food scarcity, and more.
    </p>

    <div id="gaugegraph"><img src="img/GaugeText.png" height="100%" width="100%"></div>

    <br>
    <!-- <p><strong>80%</strong> of the worlds plants require pollination by animals.</p> ---- 80% https://www.fs.fed.us/wildflowers/pollinators/importance.shtml#:~:text=More%20than%20150%20food%20crops,than%20%2410%20billion%20per%20year.-->
    <br>
    <!--<p><strong>37%</strong> of the 20,000 bee species on earth are in decline.</p>  ----- https://www.sierraclub.org/georgia/BEElieve -->
    <br>
    <!-- <p><strong>90%</strong> of bees in some regions have disappeared over the past 15 years.</p> ----  https://www.natgeokids.com/za/discover/animals/insects/honey-bees/ -->

    <div id="tempgraph"><img src="img/beechart4.png" height="80%" width="100%"></div>

    <p>With the known bee colony losses we can see that bees need support from their local communities to get by.
        The continued decline is not associate with colony collapse disorder it is associated with lack of resources. Homogenized grass yards
        and gardens that are popular in the US do not allow common resources that bees have relied on for millennia.
        This is a big loss when you consider yards are the 4th largest grown crop in the United States by land cover.
        Weed killers remove clovers a common bee food source, flowers are relegated to structured flower beds, and raked leaves in the fall
        and winter remove areas where many pollinators choose to hibernate. Knowing how much bees rely on these resources racking your leaves
        to a composting pit in the back of your yard, or providing alternative food will help the bees in your community immensity.
        On average bees need to visit approximately 500 of the same type of bloom in the same trip, we can help bees by making sure they have access to repetitive bloom types.
        The easiest way to achieve this is to plant a tree or shrub that has many blooms on one plant or planting a flower garden with many of the same flower. </p>

    <div id="divider"><img src="img/divider.png" height="100%" width="100%"></div>

    <div id="pollinationtitle"><img src="img/pollinationtitle.png" height="100%" width="100%"></div>


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
            <p class="img__description">The bee will gather pollen from the plant to take back to hive.
                The bee will store all the gathered pollen mostly on its legs and continue to gather more.</p>
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
                    Anyone can build a pollinator garden. From living in an apartment in the city to living on 60 acres of lands in the country
                    there are many options for building a garden that will benefit your local bees. Bees will travel up to 5 miles to find food.
                    Each trip a bee takes to find pollen it only visit one type of plant. While a bee can travel far and wide, planting with this
                    in mind will make it easier for a bee colony to survive. Bees love trees because in a small area of land there are multiple types
                    of the same bloom, one tree is equivalent to a football field full of a mixed variety of flowers. While humans may picture bees
                    flying from flower to flower, this action expends significantly more energy than having a condensed area of one type of plant.
                    For this reason people who are planting a pollinator garden should focus on plants that are densely packed with blooms in a small
                    area, such as trees, clover yards, and shrubs. If you only have a little room to grow such as a window box or are working on your
                    flower garden this is not a problem. Bees love flowers, and it is easy to help them by planting many of the same type of flower
                    all over your yard so they can make a short trip.
                </p>
        <br>
        <p>
            When it comes to the blooms you pick, bees love some types of flowers more than others. Bees are best able to see the color purple, so they
            particularly love to visit flowers in this color like borage, clover, coneflowers, and lavender. They do not see red well so avoid flowers
            that bloom in this color. Bees prefer large blooms where bees can easily reach the pollen that allows for them to become covered in pollen.
            Flower that are long and tubular like trumpet flowers, petunias, and lupines are hard to reach the pollen and are usually pollinated by humming
            birds because of their long beaks.
        </p>
        <br>
    <p>Providing food for bees year-round even when they are not particularly active is essential as most
        bee keeps lose most of their colonys during the winter months. This calendar shows gardeners what plants can grow year-round so long as they are planted in
        the right climate zone. </p></div>

    <div id="divider"><img src="img/divider.png" height="100%" width="100%"></div>

    <!-- start of html5 calender used https://www.image-maps.com/-->
    <div id="bloomtitle"><img src="img/bloomtitle.png" height="100%" width="100%"></div>
    <p>The majority of beehives that fail do so in the winter when it is hard for them to find resources or pollen.
        Bee activity naturally decreases in the winter months, but they still need some resources to survive.
        This Bloom Year-Round calendar can help you plant a garden that will sustain bees year round environment permitting.
        These plants were chosen for their blooming longevity and hardiness. Each section of the calendar will take you purchase
        seeds to start your own pollinator garden, just make sure to verify they are properly zoned to grow in your region. </p>

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
        Where and when certain plants grow varies based on where they are planted. This is a tricky science based upon climate,
        freezing winters, elevation, and general weather conditions. These conditions factor into the minimum winter temperature
        which determines if a plant can survive in certain weather conditions.   In the US interpreting that information is made
        simple by the USDA. The USDA produces the Plant Hardiness Zone Map, from zone 1 to 13 the zones produced help gardeners
        decided on whether a plant is suitable for their garden. Most plants sold in stores and seed packets will say on their
        package what zones they are recommended for.  By using those zones you can identify your climate zone and see pollinator
        plants that are recommended for your region.
    </p>

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

    <div id="classactivity"></div>

    <a href="/img/activity.pdf" download>
        <img src="img/activity2.png" height="100%" width="100% alt="downloadButton">
    </a>
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