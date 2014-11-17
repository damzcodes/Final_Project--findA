var map;

$(document).ready(function(){
 	
	var options = {
    zoom: 8,
    center: new google.maps.LatLng(51.50, 0.12)
  };
	map = new google.maps.Map($('#map')[0], options);

	events = $(".events");

	// $(".search_button").click(function(e){
	//     e.preventDefault();
		for(var i=0; i<events.length; i++){
			var lat = $(events[i]).data("latitude");
			var lng = $(events[i]).data("longitude");
	// 		var marker = new google.maps.Marker({
	// 		// 	position: new google.maps.LatLng(lat, lng),
	// 		// 	map: map
	// 		// });

	// 		addMarker(lat, lng);
		}
	// })
});

function addMarker(lat, lng){
	var marker = new google.maps.Marker({
		position: new google.maps.LatLng(lat, lng),
		map: map
	});

google.maps.event.addListener(marker, 'click', function(){
	map.setZoom(16);
	map.setCentre(marker.getPosition());
});
}
