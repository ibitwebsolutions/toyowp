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
<!-- <script>
	
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
	
</script> -->
		<!-- <script src="https://maps.googleapis.com/maps/api/js?sensor=false&callback=initialize"
				async defer></script> -->



<!-- NEW MAP SCRIPT -->
<script>
	
	function initMap() {
        var directionsService = new google.maps.DirectionsService;
        var directionsDisplay = new google.maps.DirectionsRenderer;

        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 10,
          center: {lat: 41.85, lng: -87.65}
        });
        directionsDisplay.setMap(map);

       // var onChangeHandler = function() {
          //calculateAndDisplayRoute(directionsService, directionsDisplay);
       // };
        // document.getElementById('start').addEventListener('change', onChangeHandler);
        // document.getElementById('end').addEventListener('change', onChangeHandler);



        infoWindow = new google.maps.InfoWindow;

        // Try HTML5 geolocation.
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };

            var dest = {
            	lat: 14.6262687,
            	lng: 121.0051642
            };

            infoWindow.setPosition(pos);
            infoWindow.setContent("<b style='text-decoration: underline'>Location found.</b>");
            infoWindow.open(map);
            map.setCenter(pos);

            // Display Route
            calculateAndDisplayRoute(directionsService, directionsDisplay,pos,dest);


          }, function() {
            handleLocationError(true, infoWindow, map.getCenter());
          });
        } else {
          // Browser doesn't support Geolocation
          handleLocationError(false, infoWindow, map.getCenter());
        }
      }

      function calculateAndDisplayRoute(directionsService, directionsDisplay, pos,dest) {
      	getDistance(pos,dest);
        directionsService.route({
          origin: pos,
          destination: dest,
          travelMode: 'DRIVING'
        }, function(response, status) {
          if (status === 'OK') {
            directionsDisplay.setDirections(response);
          } else {
            window.alert('Directions request failed due to ' + status);
          }
        });
      }



      function getDistance(currentPos,destPos){
        var from = new google.maps.LatLng(currentPos);
		var fromName = 'Current Location';
		var dest = new google.maps.LatLng(destPos);
		var destName = 'Branch Location';

		var service = new google.maps.DistanceMatrixService();
		service.getDistanceMatrix(
		    {
		        origins: [from, fromName],
		        destinations: [destName, dest],
		        travelMode: 'DRIVING'
		    }, callback);

		function callback(response, status) {
		    if (status == 'OK') {
		        var origins = response.originAddresses;
		        var destinations = response.destinationAddresses;

		        for (var i = 0; i < origins.length; i++) {
		            var results = response.rows[i].elements;
		            console.log(results);
		            for (var j = 0; j < results.length; j++) {
		                var element = results[j];
		                var distance = element.distance.text;
		                var duration = element.duration.text;
		                var from = origins[i];
		                var to = destinations[j];
		            }
		        }
		    }
		}
      }
</script>

<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC4QVHROrqd3qGOyjKmBIxR6EoEjfbmfiA&callback=initMap"></script>