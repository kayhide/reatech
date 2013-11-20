# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->

  $gmap = $('#gmap')
  gmap = new GMaps
   div: $gmap[0]
   zoom: 12
   lat: $gmap.attr('data-lat')
   lng: $gmap.attr('data-lng')

  for activeCheckin in activeCheckins
    location = activeCheckin.location
    project = activeCheckin.project
    github = activeCheckin.github

    gmap.addMarker
      lat: location.latitude
      lng: location.longitude
      infoWindow: {
        content: "<div style='width: 200px;'><img style='width: 30px;float: left;' src='#{github.owner.avatar_url}'></img><a style='padding-left: 40px' href='#{github.html_url}'>#{project.github}</a></div>"
      }

  navigator.geolocation.getCurrentPosition(
    (position) ->
      gmap.setCenter(position.coords.latitude, position.coords.longitude)
  )
