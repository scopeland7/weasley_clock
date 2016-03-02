// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .


<script>

function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else { 
        // x.innerHTML = "Geolocation is not supported by this browser.";
    }
}


function showPosition(position) {
    // x.innerHTML = "Latitude: " + position.coords.latitude + 
    // "<br>Longitude: " + position.coords.longitude + position.coords.accuracy; 
    var lat = position.coords.latitude;
    var lon = position.coords.longitude;
    submitData(lat, lon);
}


function submitData(lat, lon) {
  $.ajax({
    type:"POST",
    url: "/",
    data: {
        latitude: lat,
        longitude: lon
    },
  })
}

</script>