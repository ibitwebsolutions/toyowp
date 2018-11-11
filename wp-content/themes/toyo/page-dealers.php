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
var locations = [{"dealers_name":"Toyo Tires Driven","dealers_address":"1113 Banawe St, Quezon City, Metro Manila","dealers_contact":"","dealers_latitude":"14.6191054","dealers_longitude":"121.0060365","dealers_icon":"http:\/\/demo.toyotires.org\/wp-content\/uploads\/2018\/10\/download.png"},{"dealers_name":"Toyo Tires Philippines","dealers_address":"347 Ortigas Ave, Greenhills East, Mandaluyong, 1554, Mandaluyong, Metro Manila","dealers_contact":"","dealers_latitude":"14.5947099","dealers_longitude":"121.0558002","dealers_icon":"http:\/\/demo.toyotires.org\/wp-content\/uploads\/2018\/10\/download.png"},{"dealers_name":"Ayala Triangle Park","dealers_address":"Makati City","dealers_contact":"","dealers_latitude":"14.5571","dealers_longitude":"121.0207707","dealers_icon":"http:\/\/demo.toyotires.org\/wp-content\/uploads\/2018\/10\/download.png"}];


// Note: This example requires that you consent to location sharing when
// prompted by your browser. If you see the error "The Geolocation service
// failed.", it means you probably did not give permission for the browser to
// locate you.
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

// function calculateRoute() {

// var lastPoint = new google.maps.LatLng(14.7938922, 120.953604);
// var request = {
// origin: firstPoint,
// destination: lastPoint,
// travelMode: 'DRIVING'
// }

// directionsService.route(request, function(result, status) {
// directionsDisplay.setDirections(result);
// });
// }
var arr = [];
var newData;	

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
		
		console.log(arr.length);
    	console.log(arr);
		var closest = arr.reduce(function(acc, loc) {
		    acc.distance < loc.distance ?
		        acc :
		        loc
		}, 0);
		directionsService.route(request, function(result, status) {
		    console.log(closest.result);
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
	},5000);



};


// function handleLocationError(browserHasGeolocation, infoWindow, pos) {
// 	infoWindow.setPosition(pos);
// 	infoWindow.setContent(browserHasGeolocation ?
// 	'Error: The Geolocation service failed.' :
// 	'Error: Your browser doesn\'t support geolocation.');
// 	infoWindow.open(map);
// }

</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC4QVHROrqd3qGOyjKmBIxR6EoEjfbmfiA&callback=initMap"></script>