$(function() {
  // This sample uses the Autocomplete widget to help the user select a
  // place, then it retrieves the address components associated with that
  // place, and then it populates the form fields with those details.
  // This sample requires the Places library. Include the libraries=places
  // parameter when you first load the API. For example:
  // <script
  // src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">
  // initAutocomplete()
  initMap()
  function initMap() {
    if ($('#shop_latitude').val() == ""  || $('#shop_longitude') == "")  {
      var myLatLng = {lat: 35.681236, lng: 139.767125};
    } else {
      var myLatLng = {lat: Number($('#shop_latitude').val()), lng: Number($('#shop_longitude').val())};
    }

    const map = new google.maps.Map(document.getElementById('edit_map_info'), {
      zoom: 16,
      center: myLatLng
    });

    const marker = new google.maps.Marker({
      position: myLatLng,
      map: map,
      title: 'Hello World!'
    });
  }

  const componentForm = {
    name: 'short_name',
  };

  const LatLngFrom = new google.maps.LatLng(35.692195,139.7576653);
  const LatLngTo   = new google.maps.LatLng(35.696157,139.7525771);
  const bounds = new google.maps.LatLngBounds(LatLngFrom, LatLngTo);
  //オートコンプリートのオプション
  const options = {
    map: ".map_canvas",
    location: [35.662037, 139.697440],
    types: ['(regions)'],                      // 検索タイプ
    bounds: bounds,                            // 範囲優先検索
    types: ['establishment'],
    componentRestrictions: {country: 'jp'}     // 日本国内の住所のみ
  };

  initAutocomplete()

  function initAutocomplete() {
    // Create the autocomplete object, restricting the search predictions to
    // geographical location types.
    autocomplete = new google.maps.places.Autocomplete(
      document.getElementById('autocomplete'), options);

    // Avoid paying for data that you don't need by restricting the set of
    // place fields that are returned to just the address components.
    autocomplete.setFields(['name', 'formatted_address', 'geometry']);

    // When the user selects an address from the drop-down, populate the
    // address fields in the form.
    autocomplete.addListener('place_changed', fillInAddress);
  }
  function fillInAddress() {
    // Get the place details from the autocomplete object.
    const place = autocomplete.getPlace();
    $('#shop_name').val(place.name);
    $('#shop_address').val(place.formatted_address);
    var myLatLng = {lat: place.geometry.location.lat(), lng: place.geometry.location.lng()};
    $('#shop_latitude').val(myLatLng.lat);
    $('#shop_longitude').val(myLatLng.lng);
    const map = new google.maps.Map(document.getElementById('edit_map_info'), {
      zoom: 16,
      center: myLatLng
    });

    const marker = new google.maps.Marker({
      position: myLatLng,
      map: map,
      title: 'Hello World!'
    });
  }

});
