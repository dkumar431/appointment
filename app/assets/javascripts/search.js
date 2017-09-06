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
      $('#location').val(location.results[0].address_components[6].long_name)
    })
  }

  $.ajax({
    url: '/search/suggestions',
    type: 'GET',
    dataType: 'json',
    success(data) {
      const availableAuthors = data.names;
      $('#term').autocomplete({source: availableAuthors});
    },
    error(request, error) {
      return alert(`Request: ${JSON.stringify(request)}`);
    }
  });

  $('#term').on('autocompleteselect', function(event, ui) {
    
    $('#term').val(ui.item.label);
    event.preventDefault();
    $("#doctor_id").val(ui.item.value);
    $("#searchform").submit();

    
    // $.ajax({
    //   url: `https://messageboard-tilak256.c9users.io/users/${ui.item.value}/posts`,
    //   type: 'GET',
    //   success(data) {
    //     return console.log(data);
    //   },
    //   error(request, error) {
    //     return alert(`Request: ${JSON.stringify(request)}`);
    //   }
    // });
});

})
