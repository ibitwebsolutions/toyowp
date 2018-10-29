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
			navigator.geolocation.getCurrentPosition(initialize, failure);
					
			function initialize(position) {
				var mapOptions = {
					zoom: 15,
					center: firstPoint
				}
				map = new google.maps.Map(document.getElementById('map'), mapOptions);
				directionsService = new google.maps.DirectionsService();
				directionsDisplay = new google.maps.DirectionsRenderer();
				geoCoder = new google.maps.Geocoder();

				if (navigator.geolocation) {
					navigator.geolocation.getCurrentPosition(function(position) {
						
						myLat = position.coords.latitude;
						myLong = position.coords.longitude;
						firstPoint = new google.maps.LatLng(myLat, myLong);
						var markerOptions = {
							map: map
						};
						var marker = new google.maps.Marker(markerOptions);
						directionsDisplay.setMap(map);
						calculateRoute(locations);

					}, function() {
						handleLocationError(true, infoWindow, map.getCenter());
					});
				} else {
				handleLocationError(false, infoWindow, map.getCenter());
				}
			}
			
			function failure() {}
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
						var newData = {
							"distance" : parseFloat(result.routes[0].legs[0].distance.text),
							"result" : result,
							"origin" : result.routes[0].legs[0].start_address,
							"destination" : result.routes[0].legs[0].end_address,
							"address" : address,
							"name" : name,
              "icon" : icon
						}
						arr.push(newData);

					});
				}
				const closest = arr.reduce(
				(acc, loc) =>
					acc.distance < loc.distance
					? acc
					: loc
				)
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
          directionsDisplay.setOptions( {suppressMarkers: true} )


				});
        var result = "";
        result += "<p>Distance: " + closest.distance + "KM" + "</p>";
				result += "<p>Origin: " + closest.origin + "</p>";
				result += "<p>Destination: " + closest.destination + "</p>";
				result += "<p>Dealer's Name: " + closest.name + "</p>";
				result += "<p>Dealer's Address: " + closest.address + "</p>";
        document.getElementById("map-details").innerHTML  = result;
			}

			function handleLocationError(browserHasGeolocation, infoWindow, pos) {
				infoWindow.setPosition(pos);
				infoWindow.setContent(browserHasGeolocation ?
									'Error: The Geolocation service failed.' :
									'Error: Your browser doesn\'t support geolocation.');
				infoWindow.open(map);
      		}
			
		</script>
		<script src="https://maps.googleapis.com/maps/api/js?sensor=false&callback=initialize"
				async defer></script>