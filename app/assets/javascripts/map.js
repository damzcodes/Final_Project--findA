// var map;

$(document).ready(function(){

	var myLatlng = new google.maps.LatLng(-25.363882,131.044922);
	var mapOptions = {
	  zoom: 4,
	  center: myLatlng
	}
	var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

// To add the marker to the map, use the 'map' property
	var marker = new google.maps.Marker({
	    position: myLatlng,
	    map: map,
	    title:"Hello World!"
	});
 	
	// var options = {
 //    zoom: 8,
 //    center: new google.maps.LatLng(51.50, 0.12)
 //  };
	// map = new google.maps.Map($('#map')[0], options);

	// events = $(".events");

	// $(".search_button").click(function(e){
	//     e.preventDefault();
		// for(var i=0; i<events.length; i++){
		// 	var lat = $(events[i]).data("latitude");
		// 	var lng = $(events[i]).data("longitude");
	// 		var marker = new google.maps.Marker({
	// 		// 	position: new google.maps.LatLng(lat, lng),
	// 		// 	map: map
	// 		// });

	// 		addMarker(lat, lng);
		// }
	// })
});

// function addMarker(lat, lng){
// 	var marker = new google.maps.Marker({
// 		position: new google.maps.LatLng(lat, lng),
// 		map: map
// 	});

// google.maps.event.addListener(marker, 'click', function(){
// 	map.setZoom(16);
// 	map.setCentre(marker.getPosition());
// });
// }
