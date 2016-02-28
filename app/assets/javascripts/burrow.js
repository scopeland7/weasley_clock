$(document).ready(function() {
	var mapOptions = {
		zoom: 8,
		center: new google.maps.LatLng(43.77, 11.248),
		mapTypeId: google.maps.MapTypeId.ROADMAP,
	};
	var map = new google.maps.Map($('#map')[0], mapOptions);
});

if (navigator.geolocation) {
	navigator.geolocation.getCurrentPosition(
		function(p) {
			var latlng = new google.maps.LatLng(p.coords.latitude,
																					p.coords.longitude);
			$('span#position').text(latlng);
			if (myMarker) myMarker.setMap(null);
			myMarker = new google.maps.Marker(
					{position: latlng, map: map, title: "This is Me"}
			);
		},
		function(error) {
				alert(error.message);
		},
		{maximumAge: 600000}
	);
}
else {console.error("No HTML5? What are you using, IE6?"); }