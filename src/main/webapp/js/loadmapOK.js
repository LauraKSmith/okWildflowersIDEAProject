var map;
var place;
var autocomplete;
var infowindow = new google.maps.InfoWindow();

function initialization() {
    showAllObservations();
    initAutocomplete();
}

function showAllObservations() {
    $.ajax({
        url: 'HttpServlet',
        type: 'POST',
        data: { "tab_id": "1"},
        success: function(observations) {
            mapInitialization(observations);
        },
        error: function(xhr, status, error) {
            alert("An AJAX error occured: " + status + "\nError:  " + error);
        }
    });
}

function mapInitialization(observations) {
    var mapOptions = {
        mapTypeId : google.maps.MapTypeId.ROADMAP, // Set the type of Map
    };
    console.log(observations);
    console.log("inside mapInitialization")

    // Render the map within the empty div
    map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

    map.setMapTypeId('terrain');

    var bounds = new google.maps.LatLngBounds();

    $.each(observations, function(i, e) {
        var long = Number(e['longitude']);
        var lat = Number(e['latitude']);
        var latlng = new google.maps.LatLng(lat, long);

        bounds.extend(latlng);

        // Create the infoWindow content
        var common = e['common_name'];

        // replace underscores in common name with apostrophes
        if (common != null){
            common = common.replace(/_/g, '\'');
        }
        var contentStr = '<h4>What Did You Plant?</h4><hr>';
        contentStr += '<p><b>' + 'Plant name' + ':</b>&nbsp' + common + '</p>';
        contentStr += '<p><b>' + 'Plant type' + ':</b>&nbsp' + e['genus'] + '</p>';
        contentStr += '<p><b>' + 'Habitat description' + ':</b>&nbsp' + e['habitat'] + '</p>';
        contentStr += '<p><b>' + 'Recorded by' + ':</b>&nbsp' + e['recorded_by'] + '</p>';
        contentStr += '<p><b>' + 'Date' + ':</b>&nbsp' + e['date'] + '</p>';

        //add custom icons for each genus
        var icon;
        var genus = e['genus'];

        console.log(">>>>> GENUS: ", genus);

        if (genus=='Flower') {
            icon = {
                url: 'img/purpleflower.png',
                scaledSize: new google.maps.Size(25, 30),}
        } else if (genus == 'Clover') {
            icon = {
                url: 'img/clover2.png',
                scaledSize: new google.maps.Size(30, 30), // scaled size
            }
        } else if (genus == 'Shrub') {
            icon = {
                url: 'img/shrub.png',
                scaledSize: new google.maps.Size(30, 30), // scaled size
            }
        } else if (genus == 'Tree') {
            icon = {
                url: 'img/tree.png',
                scaledSize: new google.maps.Size(20, 30), // scaled size
            }
        } else if (genus == 'Ivy') {
            icon = {
                url: 'img/clover2.png',
                scaledSize: new google.maps.Size(30, 30), // scaled size
            }
        } else if (genus == 'Other') {
            icon = {
                url: 'img/purpleflower.png',
                scaledSize: new google.maps.Size(20, 30), // scaled size
            }
        } else {
            icon = {
                url: 'img/bush.png',
                scaledSize: new google.maps.Size(30, 25), // scaled size
            }
        }

        var marker = new google.maps.Marker({ // Set the marker
            position : latlng, // Position marker to coordinates
            map : map, // assign the market to our map variable
            customInfo: contentStr,
            icon: icon,
        });

        // Add a Click Listener to the marker (creates infowindow content using contentStr (customInfo)
        google.maps.event.addListener(marker, 'click', function() {
            // use 'customInfo' to customize infoWindow
            infowindow.setContent(marker['customInfo']);
            infowindow.open(map, marker); // Open InfoWindow
        });

    });

    map.fitBounds (bounds);

}

function initAutocomplete() {
    // Create the autocomplete object
    autocomplete = new google.maps.places.Autocomplete(document
        .getElementById('autocomplete'));

    // When the user selects an address from the dropdown, show the place selected
    autocomplete.addListener('place_changed', onPlaceChanged);
}

function onPlaceChanged() {
    place = autocomplete.getPlace();
    //QUESTION #3: Re-center the map using the autocompleted place
    map.fitBounds(place.geometry.viewport);
}


//Execute our 'initialization' function once the page has loaded.
google.maps.event.addDomListener(window, 'load', initialization);