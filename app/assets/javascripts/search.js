$(document).ready(function(){
  get_location()
  function get_location() {
    navigator.geolocation.getCurrentPosition(show_map);
  }
  function show_map(position) {
    var latitude = position.coords.latitude;
    var longitude = position.coords.longitude;
    // let's show a map or do something interesting!
    var GEOCODING = 'https://maps.googleapis.com/maps/api/geocode/json?latlng=' + latitude + '%2C' + longitude + '&language=en';
    
    $.getJSON(GEOCODING).done(function(location) {
      console.log(location)
    })
  }
})
