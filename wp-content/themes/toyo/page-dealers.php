<?php
/*
*	Template Name: Dealer
*/
get_header();
?>
<style>
#map-container {
position: relative;
}
.map-details {
position: absolute;
top: 0;
left: 0;
background: rgba(255,255,255,.2);
}
#map {
height: 500px;
height: 700px;
}
html, body {
height: 100%;
margin: 0;
padding: 0;
}
</style>

<div id="map-container">
	<div id="map-details">

	</div>
	<div id="map"></div>
</div>
<?php get_footer(); ?>
<?php
$dealers_info = get_field('dealers_information');
$dealers_data = json_encode($dealers_info);
?>
<script>
var locations = <?php echo $dealers_data; ?>;
</script>

<script>


var directionsDisplay, directionsService, map, firstPoint, lastPoint, myLat, myLong;
var map, infoWindow;

function initMap() {
    map = new google.maps.Map(document.getElementById('map'), {
        center: { lat: -34.397, lng: 150.644 },
        zoom: 15
    });
    directionsService = new google.maps.DirectionsService();
    directionsDisplay = new google.maps.DirectionsRenderer();

    infoWindow = new google.maps.InfoWindow;

    // Try HTML5 geolocation.
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
                lat: position.coords.latitude,
                lng: position.coords.longitude
            };
            firstPoint = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
						infoWindow.setPosition(pos);
            infoWindow.setContent('Location found.');
            infoWindow.open(map);
            map.setCenter(pos);
            directionsDisplay.setMap(map);
            calculateRoute(locations);

        }, function() {
            handleLocationError(true, infoWindow, map.getCenter());
        });
    } else {
        // Browser doesn't support Geolocation
        handleLocationError(false, infoWindow, map.getCenter());
    }
}

var arr = [];
function calculateRoute(locations) {
	for(x = 0; x < locations.length; x++) {
		var lastPoint = new google.maps.LatLng(locations[x].dealers_latitude, locations[x].dealers_longitude);
		var request = {
			origin: firstPoint,
			destination: lastPoint,
			travelMode: 'DRIVING'
		}
		const address = locations[x].dealers_address;
		const name = locations[x].dealers_name;
		const icon = locations[x].dealers_icon;
		
		directionsService.route(request, function(result, status) {
			newData =   {
							"distance" : parseFloat(result.routes[0].legs[0].distance.text),
							"result" : result,
							"origin" : result.routes[0].legs[0].start_address,
							"destination" : result.routes[0].legs[0].end_address,
							"address" : address,
							"name" : name,
							"icon" : icon
						};
			arr.push(newData);
		});
	};
	setTimeout(function(){
		console.log(arr);
		var closest = arr.reduce((min, p) => 
		p.distance < min 
		? p.distance
		: min);
		console.log(closest);
		directionsService.route(request, function(result, status) {
		    
		    markerA = new google.maps.Marker({
		            position: closest.result.routes[0].legs[0].start_location,
		            title: closest.origin,
		            map: map,
		            icon: 'https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-man-128.png'
		        }),
		        markerB = new google.maps.Marker({
		            position: result.routes[0].legs[0].end_location,
		            title: closest.address,
		            label: closest.name,
		            map: map,
		            icon: closest.icon
		        });

		    directionsDisplay.setDirections(closest.result);
		    directionsDisplay.setOptions({ suppressMarkers: true })


		});
	},1000);
};




</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC4QVHROrqd3qGOyjKmBIxR6EoEjfbmfiA&callback=initMap"></script>