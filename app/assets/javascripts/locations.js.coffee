# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$gmap = $('#gmap')
gmap = new GMaps
 div: $gmap[0]
 zoom: 12
 lat: $gmap.attr('data-lat')
 lng: $gmap.attr('data-lng')
 disableDefaultUI: true

for activeCheckin in activeCheckins
  location = activeCheckin.location
  gmap.addMarker
    lat: location.latitude
    lng: location.longitude
    infoWindow: {
      content: "<p>#{activeCheckin.project.github}</p>"
    }

